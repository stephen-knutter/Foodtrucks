class User < ActiveRecord::Base
  attr_accessor :remember_token, :activation_token, :reset_token
  before_save :downcase_email
  before_create :create_activation_digest
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
  has_many :ratings
  
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
  
  def authenticated?(attribute, token)
    digest = send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end
  
  def forget
    update_attribute(:remember_digest, nil)
  end
  
  def activate
    update_attribute(:activated, true)
    update_attribute(:activated_at, Time.zone.now)
  end
  
  def send_activation_email
    UserMailer.account_activation(self).deliver_now
  end
  
  def create_reset_digest
    self.reset_token = User.new_token
    update_attribute(:reset_digest, User.digest(reset_token))
    update_attribute(:reset_sent_at, Time.zone.now)
  end
  
  def send_password_reset_email
    UserMailer.password_reset(self).deliver_now
  end
  
  def password_reset_expired?
    self.reset_sent_at < 2.hours.ago
  end
  
    private
    
    def downcase_email
      self.email = email.downcase
    end
    
    def create_activation_digest
      self.activation_token = User.new_token
      self.activation_digest = User.digest(activation_token) #created before user is saved and will be written to db upon save
    end
end












