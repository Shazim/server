class Expertise < ApplicationRecord
  has_many :user_expertises
  has_many :users, through: :user_expertises
end
