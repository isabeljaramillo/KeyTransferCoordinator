class Trip < ApplicationRecord
  has_and_belongs_to_many :legs
  has_and_belongs_to_many :users
  validates :origin, :destination, :username, presence: true

  def order_legs_for_each_trip
    @trip.legs.each do |leg|
    leg.origin
    leg.destination
    leg.order # Puts out 1, 2, 3
  end
end
