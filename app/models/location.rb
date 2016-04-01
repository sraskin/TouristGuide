class Location < ActiveRecord::Base
  has_many :tourist_spots
  has_one :guide_service
  has_many :local_business
end