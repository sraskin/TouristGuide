class District < ActiveRecord::Base
  has_many :local_businesses
  has_many :guide_services
  has_many :tourist_spots
  belongs_to :division
  has_many :thanas
end
