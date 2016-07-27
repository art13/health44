ActiveAdmin.register Address do
  config.filters = false
  config.batch_actions = false

  belongs_to :company

  index do
  	column :location
  	default_actions
  end

  form do |f|
  	f.inputs do
  	  f.input :location
  	end
  	f.actions
  end
  
end
