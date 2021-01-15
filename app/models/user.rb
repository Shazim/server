class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :trackable

  # Relations with other tables
  has_one :profile
  
  has_many :user_skills
  has_many :skills, through: :user_skills
  
  has_many :user_genres
  has_many :genres, through: :user_genres
  
  has_many :user_expertises
  has_many :expertises, through: :user_expertises
  
  has_many :social_links
  
  has_many :user_locations
  
  has_many :user_trips
  # Call Backs
  after_create :init_profile

  def init_profile
    create_profile!
  end
end
