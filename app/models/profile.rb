class Profile < ApplicationRecord
  #Relations with other tables
  belongs_to :user
  
  # Image Upload
  has_one_attached :image  
end
