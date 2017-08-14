class CreateEquites < ActiveRecord::Migration[5.1]
  def change
    create_table :equites do |t|
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
