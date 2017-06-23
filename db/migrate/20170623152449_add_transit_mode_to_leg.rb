class AddTransitModeToLeg < ActiveRecord::Migration[5.1]
  def change
    add_column :legs, :transit_mode, :string
  end
end
