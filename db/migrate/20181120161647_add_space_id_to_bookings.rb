class AddSpaceIdToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :space_id, :integer
  end
end
