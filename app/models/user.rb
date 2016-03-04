class User < ActiveRecord::Base
  attr_accessor :remember_token
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
   has_secure_password #uses BCrypt gem to create hash
                       #gives hashed password_digest(saved in password_digest column in db), 
                       #password & password confirmation attributes, including prescence and matching validation
                       #authenticate method, returns user from db when password is correct
                    
  validates :password, presence: true, length: { minimum: 6 }, 
                                                  allow_nil: true #for edit->update....has_secure_password will reject nil for signup
  has_attached_file :profile_pic, 
                    default_url: ":style-no-profile.png",
                    styles: {profile: "190x190#", thumb: "45x45#"},
                    url: "/assets/users/:id/:style/:basename.:extension",
                    path: ":rails_root/public/assets/users/:id/:style/:basename.:extension"
  #validates_attachment_presence :profile_pic
  #validates_attachment_size :profile_pic, less_than: 100.megabytes
  validates_attachment_content_type :profile_pic, content_type: ["image/jpeg", "image/jpg", "image/png", "image/gif"]
  
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    
    BCrypt::Password.create(string, cost: cost)
  end
  
  def User.new_token
    SecureRandom.urlsafe_base64
  end
  
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(self.remember_token))
  end
  
  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(self.remember_digest).is_password?(remember_token)
  end
  
  def forget
    update_attribute(:remember_digest, nil)
  end
end












