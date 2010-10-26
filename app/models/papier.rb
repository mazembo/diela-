class Papier < ActiveRecord::Base

  def self.paginated_search(search, page)
  if search
    paginate :per_page => 2, :page =>page,
             :conditions => ["category = 'article'" && 'title LIKE ?', "%#{search}%"]

  else
    paginate :per_page => 2, :page =>page,
             :conditions => ["category = 'article'"]
  end
  end
end
