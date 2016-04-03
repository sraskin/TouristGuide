class TouristSpot < ActiveRecord::Base
  belongs_to :user
  belongs_to :division
  belongs_to :district
  belongs_to :thana
  has_many :spots
end
