class Post < ActiveRecord::Base
#attr_accessible :id, :user_id, :user
    
  belongs_to :user
  
  def self.search(search)
  where("content ILIKE ? OR contentname ILIKE ?", "%#{search}%", "%#{search}%") 
  end
end
