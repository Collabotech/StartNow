class Post < ActiveRecord::Base
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  acts_as_votable

  validates_presence_of :post_content
  validates_presence_of :post_title
  validates_presence_of :user

  def self.search(search)
    where("post_content ILIKE ? OR post_title ILIKE ?", "%#{search}%", "%#{search}%")
  end
end
