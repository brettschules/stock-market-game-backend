class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :symbol
      t.float :price_purchased
      t.integer :units
      t.string :status
      t.string :order
      t.integer :user_id

      t.timestamps
    end
  end
end
