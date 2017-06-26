class Leg < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :trips
<<<<<<< HEAD
  validates :origin, :destination, :username, presence: true
=======
  enum transit_mode: {
    "Airplane" => 0,
    "Boat" => 1,
    "Bus" => 2,
    "Car" => 3,
    "Train" => 4,
  }
  validates :origin, :description, :username, presence: true
  validates :transit_mode, inclusion transit_modes.keys
>>>>>>> a0d66d8698fac532240b032dff8c779aee95a146
end
