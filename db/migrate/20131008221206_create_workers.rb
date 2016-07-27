class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.string :secondname, null: false
      t.integer :experience, :default => 0
      t.string :position
      t.text :information

      t.timestamps
    end
  end
end
