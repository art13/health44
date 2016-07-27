class CreateServiceCategories < ActiveRecord::Migration
  def change
    create_table :service_categories do |t|
      t.string :title, :null => false
      t.string :parent_id

      t.references :department
      
      t.timestamps
    end
  end
end
