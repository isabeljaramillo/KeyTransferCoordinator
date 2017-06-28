class CreateLegs < ActiveRecord::Migration[5.1]
  def change
    create_table :legs do |t|
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
end
