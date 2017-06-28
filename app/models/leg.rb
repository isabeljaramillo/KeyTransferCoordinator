class Leg < ApplicationRecord
  belongs_to :users
  belongs_to :trips
  validates :origin, :destination, presence: true
end
