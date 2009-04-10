class Paper < ActiveRecord::Base
  acts_as_textiled :body
  has_many :comments
  
  
  
end
