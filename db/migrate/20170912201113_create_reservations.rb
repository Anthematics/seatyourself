class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :seating_id
      t.integer :party_size
      t.string :email

      t.timestamps
    end
  end
end
