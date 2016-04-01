class User < ActiveRecord::Base
  has_many :tourist_spots
  has_one :guide_service
  has_many :local_business

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
