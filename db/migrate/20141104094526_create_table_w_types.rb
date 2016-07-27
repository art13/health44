class CreateTableWTypes < ActiveRecord::Migration
	def change
	     create_table :w_types do |t|
	     	t.string :w_type, :default => ""
		t.timestamps
	     end
	end
end
