class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :location, :null => false
      t.float :latitude
      t.float :longitude

      t.references :company
      
      t.timestamps
    end
  end
end
