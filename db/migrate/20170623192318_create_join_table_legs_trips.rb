class CreateJoinTableLegsTrips < ActiveRecord::Migration[5.1]
  def change
    create_join_table :legs, :trips do |t|
       t.index [:leg_id, :trip_id]
       t.index [:trip_id, :leg_id]
    end
  end
end
