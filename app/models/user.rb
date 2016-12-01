class User < ActiveRecord::Base

  has_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "http://www.finearttips.com/wp-content/uploads/2010/05/avatar.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  acts_as_messageable
  
  def mailboxer_name
    self.name
  end
  
  def mailboxer_email(object)
    self.email
  end
  
  
end
