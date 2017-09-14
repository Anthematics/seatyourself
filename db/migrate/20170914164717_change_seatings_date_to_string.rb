class ChangeSeatingsDateToString < ActiveRecord::Migration[5.0]
  def change
    change_column :seatings, :date, :string
  end
end
