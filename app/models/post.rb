class Post < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :content
  validates_presence_of :user

end
