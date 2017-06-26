class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :Trips, :username, :triptitle
  end
end
