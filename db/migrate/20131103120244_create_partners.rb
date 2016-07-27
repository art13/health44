class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :title, null: false
      t.text :body, null: false

      t.references :company

      t.timestamps
    end
  end
end
