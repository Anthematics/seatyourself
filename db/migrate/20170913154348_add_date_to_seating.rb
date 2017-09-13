class AddDateToSeating < ActiveRecord::Migration[5.0]
  def change
    add_column :seatings, :date, :date
  end
end
