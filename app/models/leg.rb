class Leg < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :trips
  validates :origin, :destination, :username, :transit_mode, presence: true

end
