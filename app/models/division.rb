class Division < ActiveRecord::Base
  has_many :local_businesses
  has_many :guide_services
  has_many :tourist_spots
  has_many :districts
  has_many :thanas
end
