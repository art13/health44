ActiveAdmin.register Department do
  config.filters = false
  config.batch_actions = false

  belongs_to :company

  index :as => :block do |department|
  	div :for => :department do
  	  h2 do
  	  	strong link_to(department.title, admin_company_department_path(department.company_id,department))
  	  end
  	  div do
  	    simple_format department.description
  	  end
  	end
  end

  show do
  	h3 do
  	  strong department.title
  	end
  	div do
  	  simple_format department.description
  	end
  end

end
