class RemoveSpacesIdFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :spaces_id, :integer
  end
end
