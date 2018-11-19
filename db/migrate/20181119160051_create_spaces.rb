class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.string :address
      t.integer :capacity
      t.boolean :availability

      t.timestamps
    end
  end
end
