class ChangeSeatingsStartHourToString < ActiveRecord::Migration[5.0]
  def change
    change_column :seatings, :start_hour, :string
  end
end
