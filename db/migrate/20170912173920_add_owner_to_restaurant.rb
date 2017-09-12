class AddOwnerToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_reference :Restaurants, :Owner, index: true, foreign_key:true
  end
end
