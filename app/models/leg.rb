class Leg < ApplicationRecord
  validates :origin, :description, :username, presence: true
end
