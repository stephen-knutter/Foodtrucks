class Map < ActiveRecord::Base
  extend FriendlyId
  friendly_id :city, use: :slugged
  
  
end
