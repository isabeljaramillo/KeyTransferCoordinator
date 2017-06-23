class CreateJoinTableLegsUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :legs, :users do |t|
       t.index [:leg_id, :user_id]
       t.index [:user_id, :leg_id]
    end
  end
end
