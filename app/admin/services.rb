ActiveAdmin.register Service do
  config.batch_actions = false
  config.filters = false
  
  sidebar I18n.t(:additional_settings), only: [:index] do
    ul do
      li do
        strong link_to(I18n.t("activerecord.models.service_category.other"), admin_service_categories_path)
      end
    end
  end

  sidebar I18n.t(:additional_settings), only: [:show] do
    ul do
      li do
        strong link_to(I18n.t("activerecord.models.variant.other"), admin_service_variants_path(service))
      end
    end
  end

  index :as => :block do |service|
  	div :for => :service do
  	  h2 do
  	  	strong link_to(service.title, admin_service_path(service))
  	  end
  	  div do
  	  	simple_format service.service_category.title
  	  end
  	end
  end

end
