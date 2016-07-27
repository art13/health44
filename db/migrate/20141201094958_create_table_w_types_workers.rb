class CreateTableWTypesWorkers < ActiveRecord::Migration
	def change
	 create_table :w_types_workers do |t|
	 	t.integer :w_type_id
		t.integer :worker_id
         end
	end
end
