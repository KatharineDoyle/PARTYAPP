class AddSpaceIdToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :space_id, :string
    add_index :bookings, :space_id
  end
end
