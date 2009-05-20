class Paper < ActiveRecord::Base
  acts_as_textiled :body
  has_many :comments
  
  def self.paginated_search(search, page)
  if search
    paginate :per_page => 1, :page =>page,
             :conditions => ["category = 'article'" && 'title LIKE ?', "%#{search}%"]
    
  else
    paginate :per_page => 1, :page =>page,
             :conditions => ["category = 'article'"]
  end
  end 

  
  
end
