class AddVoucherAndVouchedtoUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :voucher, :string
    add_column :users, :vouched, :string
  end
end
