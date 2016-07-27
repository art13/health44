ActiveAdmin.register Company do
	config.filters = false
  config.batch_actions = false

  sidebar I18n.t(:additional_settings), only: [:show, :edit] do
  	ul do
      li do
        strong link_to(I18n.t("activerecord.models.address.other"), admin_company_addresses_path(company))
      end
  	  li do
        strong link_to(I18n.t("activerecord.models.phone.other"), admin_company_phones_path(company))
      end
      li do
        strong link_to(I18n.t("activerecord.models.schedule.other"), admin_company_schedules_path(company))
      end
      li do
        strong link_to(I18n.t("activerecord.models.department.other"), admin_company_departments_path(company))
  	  end
      li do
        strong link_to(I18n.t("activerecord.models.partner.other"), admin_company_partners_path(company))
      end
    end
  end

  index do
  	column :title do |company|
  		link_to company.title, admin_company_path(company)
  	end
  	default_actions
  end

  show do |company|
    div do
      raw company.description
    end
  end

  form do |f|
  	f.inputs :public do
  		f.input :title
      f.input :description
  	end
  	f.actions
  end
end
