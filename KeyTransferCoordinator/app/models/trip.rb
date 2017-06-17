class Trip < ApplicationRecord
  validates :origin, :destination, :IGN, presence: true

  def self.find_routes(sorigin, sdestination)
    one_leg(sorigin, sdestination)
    two_leg(sorigin, sdestination)
  end

  def one_leg(sorigin, sdestination)
   @one_leg = Trip.where(["origin = ? and destination = ?", sorigin, sdestination])
  end

  def two_leg
    @b1 = []
    @b2 = []
    @b1 = Trip.where(["origin = ?", @search_origin])
    @b2 = Trip.where(["destination = ?", @search_destination])
    @two_leg1 = []
    @two_leg2 = []
    x = 0
    y = 0
    while x < @b1.count
      while y < @b2.count
        if @b1[x].destination == @b2[y].origin
          @two_leg1.push(@b1[x])
          @two_leg2.push(@b2[y])
        end
      y += 1
      end
    y = 0
    x += 1
    end
  end

end
