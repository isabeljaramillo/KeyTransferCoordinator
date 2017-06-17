class Trip < ApplicationRecord
  validates :origin, :destination, :IGN, presence: true

  def self.OneLeg(sorigin, sdestination)
    Trip.where(["origin = ? and destination = ?", sorigin, sdestination])
  end
end
