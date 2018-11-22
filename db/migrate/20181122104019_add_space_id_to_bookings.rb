class AddSpaceIdToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :space, foreign_key: true
  end
end
