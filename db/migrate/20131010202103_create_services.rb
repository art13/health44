class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title, null: false
      t.float :price
      
      t.references :service_category

      t.timestamps
    end
  end
end
