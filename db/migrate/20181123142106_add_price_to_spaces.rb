class AddPriceToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :price, :integer
  end
end
