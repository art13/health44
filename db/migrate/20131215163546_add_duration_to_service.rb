class AddDurationToService < ActiveRecord::Migration
  def change
  	add_column :services, :duration, :string
  end
end
