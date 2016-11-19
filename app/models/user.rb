class User < ActiveRecord::Base
    
    has_many :posts
     
    has_secure_password 
    validates :password, :length => {:minimum => 6 }
    validates :password_confirmation, :presence => true, :if => '!password.nil?'

end
