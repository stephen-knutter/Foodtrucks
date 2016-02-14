class Store < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, 
            uniqueness: { case_sensitive: false }
  has_secure_password #uses bcrypt gem to create hash
                      #gives hashed password_digest(saved in password_digest column in db), 
                      #password & password confirmation attributes, including prescence and matching validation
                      #authenticate method, returns user from db when pass is correct 
  validates :password, presence: true, length: { minimum: 6 }
  validates :city, presence: true, length: { maximum: 255 }
  validates :state, presence: true, length: { maximum: 255 }
  validates :lat, presence: true, length: { maximum: 11 }
  validates :lng, presence: true, length: { maximum: 11 }
  validates :store_type, presence: true, length: { maximum: 255 }
  belongs_to :map
end
