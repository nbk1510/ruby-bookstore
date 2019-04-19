class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
      t.text :text
      t.integer :rating

      t.timestamps
    end
  end
end
