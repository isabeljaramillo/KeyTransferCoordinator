class Trip < ApplicationRecord
  has_and_belongs_to_many :legs
  has_and_belongs_to_many :users
  validates :origin, :destination, :triptitle, presence: true
end

@trip.leg.each do |leg|
  leg.origin
  leg.destination
  leg.order #Put out 1, 2, 3
end 
