class Trip < ApplicationRecord
  validates :origin, :destination, :IGN, presence: true

  def TwoLeg
    B1 = Trip.where(["origin = ?", @search_origin])
    B2 = Trip.where(["destination = ?", @search_destination])

    @Leg1 = []
    @Leg2 = []

    x = 0
    y = 0

    while x < B1.count
      while y < B2.count
        if B1[x].destination == B2[y].origin
          @Leg1.push(B1[x])
          @Leg2.push(B2[y])
        end
      y += 1
      end
      y = 0
      x += 1
    end
  end

end
