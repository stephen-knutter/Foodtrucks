class Rating < ActiveRecord::Base
  belongs_to :store
  belongs_to :user
  validates :store_id, :user_id, :comment, :rating, presence: true
  default_scope -> { order(created_at: :desc) }
end
