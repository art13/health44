class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.text :title, null: false
      t.text :condition
      t.references :company
      
      t.timestamps
    end
  end
end
