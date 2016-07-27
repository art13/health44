class AddColumnPositionToWorkers < ActiveRecord::Migration
  def change
 	add_column :workers, :list_position, :integer 
  end
end
