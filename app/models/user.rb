class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :trackable
  
  #Relations with other tables
  has_one :profile
         
  # Call Backs
  after_create :init_profile

  def init_profile
    self.create_profile!
  end
end
