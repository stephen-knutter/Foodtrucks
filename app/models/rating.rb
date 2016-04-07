class Rating < ActiveRecord::Base
  validates :store_id, :user_id, :comment, :rating, presence: true
  belongs_to :store
  belongs_to :user
end
