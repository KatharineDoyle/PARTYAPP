class AddRatingToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :rating, :integer
  end
end
