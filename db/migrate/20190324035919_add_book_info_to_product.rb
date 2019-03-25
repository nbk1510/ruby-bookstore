class AddBookInfoToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :author, :string
    add_column :products, :description, :string
    add_column :products, :cover, :string
  end
end
