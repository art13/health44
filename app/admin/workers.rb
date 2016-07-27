ActiveAdmin.register Worker do
  config.batch_actions = false

  index do
  	column do |worker|
  	  "#{worker.lastname} #{worker.firstname} #{worker.secondname}"
  	end
  	column :experience
  	column :position
  	column :departments do |worker|
	  worker.get_departments_list
  	end
  	column :created_at
  	default_actions
  end

  show :title => I18n.t("activerecord.models.worker.one") do |worker|
  	h3 do
  	  strong "#{worker.lastname} #{worker.firstname} #{worker.secondname}"
  	end
  	div :style => "display:inline;width:70%;position:absolute" do
  	  attributes_table do
  	    row :experience
            row :w_types do 
	    	worker.w_types.map{|i| i.w_type}
	    end
  	    row :information
  	    row :position	
  	    row :departments do
  	  	  worker.get_departments_list
  	    end
  	  end
  	end
  	div :style => "display:inline;width:25%;float:right" do
  	  image_tag(worker.photo.url(:medium))
  	end
  end
  
  form :multipart => true, :include_hidden => false do |f|
  	f.inputs do
  	  f.input :firstname
  	  f.input :lastname
  	  f.input :secondname
          f.input :w_types, as: :select, :collection => WType.all.map{|w| [w.w_type,w.id]}, :multiple => true
  	  f.input :experience, min: 0
  	  f.input :information, :input_html => { :rows => 10, :cols => 100 } #, as: :html_editor
  	  f.input :list_position
	end
  	f.inputs do
  	  f.input :photo, :as => :file
  	end
	
  	f.inputs do
  	  f.input :position
  	  f.input :departments, as: :select, collection: Department.all.map{|i| [i.title ,i.id]}, :multiple => true
  	end
  	f.buttons
  end

end
