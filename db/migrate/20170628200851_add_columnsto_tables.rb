class AddColumnstoTables < ActiveRecord::Migration[5.1]
  def change
    add_column :legs, :user_id, :integer
    add_column :legs, :trip_id, :integer
    add_column :trips, :leg_id, :integer
    add_column :users, :leg_id, :integer
  end
end
