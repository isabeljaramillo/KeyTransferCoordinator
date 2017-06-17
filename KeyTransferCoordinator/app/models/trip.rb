class Trip < ApplicationRecord
  validates :origin, :destination, :IGN, presence: true

  def OneLeg
    @OneLeg = Trip.where(["origin = ? and destination = ?", @search_origin, @search_destination])
    
  end


end
