class CreateRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :routes do |t|
      t.array :one_leg
      t.array :two_leg1
      t.array :two_leg2
      t.array :three_leg1
      t.array :three_leg2
      t.array :three_leg3

      t.timestamps
    end
  end
end
