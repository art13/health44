class CreateDepartmentsWorkers < ActiveRecord::Migration
  def up
  	create_table :departments_workers do |t|
  	  t.references :department
  	  t.references :worker
  	end
  end

  def down
  	drop_table :departments_workers
  end
end
