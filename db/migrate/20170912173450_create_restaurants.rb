class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :cuisine_style
      t.integer :price_range
      t.text :email
      t.text :phone_number
      t.text :address
      t.integer :capacity

      t.timestamps
    end
  end
end
