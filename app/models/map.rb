class Map < ActiveRecord::Base
  validates :city, :state, :lat, :lng, presence: true
  has_many :stores
  
  extend FriendlyId
  friendly_id :city, use: :slugged
  
end
