class Comment < ActiveRecord::Base
  belongs_to :paper, :counter_cache => true

  validates_presence_of :name, :text, :paper_id

  named_scope :recent, :order => "created_at DESC"

  before_save :add_protocol_to_site_url

  acts_as_list :scope => :paper

  def request=(request)
    self.user_ip    = request.remote_ip
    self.user_agent = request.env['HTTP_USER_AGENT']
    self.referrer   = request.env['HTTP_REFERER']
  end

  def matching_spam_reports
    conditions = []
    conditions << "comment_ip=#{self.class.sanitize(user_ip)}" unless user_ip.blank?
    conditions << "comment_site_url=#{self.class.sanitize(site_url)}" unless site_url.blank?
    conditions << "comment_name=#{self.class.sanitize(name)}" unless name.blank?
    SpamReport.scoped(:conditions => conditions.join(' or '))
  end

  def spammish?
    matching_spam_reports.confirmed.size > 0
  end

  private

  def add_protocol_to_site_url
    self.site_url = "http://#{site_url}" unless site_url.blank? || site_url.include?('://')
  end
end

