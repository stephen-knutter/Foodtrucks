class Map < ActiveRecord::Base
  has_many :stores
  validates :city, :state, :lat, :lng, presence: true
  
  extend FriendlyId
  friendly_id :city, use: :slugged
  
end
