class RemoveOwnerTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :owners
    remove_column :restaurants, :owner_id
  end
end
