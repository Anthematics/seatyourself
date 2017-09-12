class CreateSeatings < ActiveRecord::Migration[5.0]
  def change
    create_table :seatings do |t|
      t.references :restaurant, foreign_key: true
      t.integer :filled

      t.timestamps
    end
  end
end
