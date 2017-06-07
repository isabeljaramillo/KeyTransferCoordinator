class Trip < ApplicationRecord
  validates :origin, :destination, :IGN, presence: true
end
