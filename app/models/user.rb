class User < ActiveRecord::Base
    
    
    has_secure_password 
    validates :password, :length => {:minimum => 6 }
    validates :password_confirmation, :presence => true, :if => '!password.nil?'
    
    validates :email,         :presence => true, :uniqueness => true

end
