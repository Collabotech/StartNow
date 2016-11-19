class Post < ActiveRecord::Base
#attr_accessible :id, :user_id, :user
    
  belongs_to :user
end
