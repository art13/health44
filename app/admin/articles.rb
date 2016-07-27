ActiveAdmin.register Article do
  config.batch_actions = false
  
  index do
    column :title
    column :department
    column :created_at
    default_actions
  end

  show do |article|
    h3 do
      strong "#{article.title} (#{article.department.title})"
    end
    div do
      simple_format article.body
    end
  end

  form html: { multipart: true } do |f|
  	f.inputs :details do
  	  f.input :title
  	  f.input :body, as: :html_editor
  	  f.input :department
  	end
  	f.actions
  end

end
