class AddRatingToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :rating, :float
    add_column :products, :times_rated, :int
    add_column :products, :total_rating, :int
  end
end
