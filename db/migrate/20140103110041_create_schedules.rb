class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.text :description, null: false
	  t.references :company
      
      t.timestamps
    end
  end
end
