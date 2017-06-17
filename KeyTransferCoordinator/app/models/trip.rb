class Trip < ApplicationRecord
  validates :origin, :destination, :IGN, presence: true

  def self.find_route(sorigin, sdestination)
    OneLeg(sorigin, sdestination)
    TwoLeg(sorigin, sdestination)
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
    while x < B1.count
      while y < B2.count
        if B1[x].destination == B2[y].origin
          @two_leg1.push(B1[x])
          @two_leg2.push(B2[y])
        end
      y += 1
      end
    y = 0
    x += 1
    end
  end

end
