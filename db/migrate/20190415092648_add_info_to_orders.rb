class AddInfoToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :name, :string
    add_column :orders, :address, :string
    add_column :orders, :status, :string
  end
end
