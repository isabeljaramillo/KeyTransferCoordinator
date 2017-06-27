class AddLegCountToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :leg_count, :integer
  end
end
