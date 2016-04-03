class Thana < ActiveRecord::Base
  has_many :local_businesses
  has_many :guide_services
  has_many :tourist_spots
  belongs_to :division
  belongs_to :district
end
