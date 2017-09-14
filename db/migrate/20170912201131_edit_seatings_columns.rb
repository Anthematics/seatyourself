class EditSeatingsColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :seatings, :filled
    add_column    :seatings, :start_hour, :string
  end
end
