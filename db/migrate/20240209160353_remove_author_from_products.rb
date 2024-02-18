class RemoveAuthorFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :author
    remove_column :products, :cover
  end
end
