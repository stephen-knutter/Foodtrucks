class Store < ActiveRecord::Base
  belongs_to :map
  has_many   :ratings, dependent: :destroy
  has_many   :hours, dependent: :destroy
  has_many   :photos, dependent: :destroy
  validates  :name, 
              presence: true, 
              length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates  :email, 
              presence: true, 
              length: { maximum: 255 }, 
              format: { with: VALID_EMAIL_REGEX }, 
              uniqueness: { case_sensitive: false }
  has_secure_password #uses bcrypt gem to create hash
                      #gives hashed password_digest(saved in password_digest column in db), 
                      #password & password confirmation attributes, including prescence and matching validation
                      #authenticate method, returns user from db when pass is correct 
  has_attached_file :profile_pic,
                     default_url: ":style-no-brew.png",
                     styles: {profile: "190X190#", 
                              thumb: "45X45#"},
                     url: "/assets/stores/:id/:style/:basename.:extension",
                     path: ":rails_root/public/assets/stores/:id/:style/:basename.:extension"
  validates_attachment_content_type :profile_pic, 
                                     content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates :password, 
             presence: true, 
             length: { minimum: 6 }, 
            allow_nil: true
  validates :city,
             presence: true, 
             length: { maximum: 255 }
  validates :state, 
             presence: true, 
             length: { maximum: 255 }
  validates :lat, length: { maximum: 11 }
  validates :lng, length: { maximum: 11 }
  validates :store_type, length: { maximum: 255 }
end


def Store.digest(string)
  cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
  BCrypt::Password.create(string, cost: cost)
end
