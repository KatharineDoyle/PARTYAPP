class RemoveSpaceIdFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :space_id, :integer
  end
end
