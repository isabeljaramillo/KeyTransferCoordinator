class AddFieldsToTables < ActiveRecord::Migration[5.1]
  def change
    add_column :leg, :user_id, :integer
    add_column :leg, :trip_id, :integer
    add_column :trip, :leg_id, :integer
    add_column :user :leg_id, :integer
  end
end
