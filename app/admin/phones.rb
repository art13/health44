ActiveAdmin.register Phone do
  config.filters = false
  config.batch_actions = false

  belongs_to :company

  index do
  	column :number
  	column :multichannel do |phone|
  		phone.multichannel ? "+" : "-"
  	end
  	default_actions
  end

  show :title => '' do |phone|
  	attributes_table do
  	  row :number
  	  row :multichannel do
  	  	phone.multichannel ? "+" : "-"
  	  end
  	end
  end

  form do |f|
  	f.inputs do
  	  f.input :number, :placeholder => "(49xx) xx-xx-xx | +7-xxx-xxx-xx-xx"
  	  f.input :multichannel
  	end
  	f.actions
  end
end
