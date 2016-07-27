class Documents < ActiveRecord::Migration
  def change 
  	create_table :documents do |t|
  		t.integer :page_type, :default => 1
  		t.string :name, :default => ""
  		t.attachment :document
  		t.boolean :active, :default => false
  		t.integer :priority, :default => 0
  		t.timestamps
  	end 
  end
end
