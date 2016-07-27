class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :number, :null => false
      t.boolean :multichannel, :default => false
      t.references :company

      t.timestamps
    end
  end
end
