class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :uid
      t.string :email
      t.string :community
      t.string :voucher
      t.boolean :vouched

      t.timestamps
    end
  end
end
