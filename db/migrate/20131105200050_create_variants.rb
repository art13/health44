class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.string :title, null: false
      t.float :price, null: false
      
      t.references :service

      t.timestamps
    end
  end
end
