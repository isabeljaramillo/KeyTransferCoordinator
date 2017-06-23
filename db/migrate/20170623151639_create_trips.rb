class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :origin
      t.string :destination
      t.string :username

      t.timestamps
    end
  end
end
