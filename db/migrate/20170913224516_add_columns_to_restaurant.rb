class AddColumnsToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :description , :text
    add_column :restaurants, :seating_times, :text
  end
end
