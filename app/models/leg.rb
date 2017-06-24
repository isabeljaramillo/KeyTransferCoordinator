class Leg < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :trips
  enum transit_mode: {
    "Airplane" => 0,
    "Boat" => 1,
    "Bus" => 2,
    "Car" => 3,
    "Train" => 4,
  }
  validates :origin, :description, :username, presence: true
  validates :transit_mode, inclusion transit_modes.keys
end
