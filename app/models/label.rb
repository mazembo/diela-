class Label < ActiveRecord::Base
  has_many :labelings, :dependent => :destroy
  has_many :papiers, :through => :labelings

  def self.with_names(names)
    names.map do |name|
      Label.find_or_create_by_name(name)
    end
  end
end
