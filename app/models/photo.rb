class Photo < ActiveRecord::Base
  belongs_to :store
  belongs_to :user
  has_attached_file :photo, 
                     styles: {feed:"348x348#",small:"60x60#",thumb:"45x45#"},
                     url: "/assets/feed/:id/:style/:basename/.:extension",
                     path: ":rails_root/public/assets/feed/:id/:style/:basename/.:extension"
  validates_attachment_content_type :photo, 
                                     content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] 
end
