
ActiveAdmin.register Document do 
	# actions :all, :except => [:edit]
	collection_values = [[I18n.t('lows'), 1],[I18n.t('licenses'), 2],[I18n.t('contracts'),3],[I18n.t('others'),4],[I18n.t('oms'), 5]]
	config.batch_actions = false
	filter :name, :label => I18n.t('filter_name')
	filter :page_type, as: :select, :collection =>  collection_values
	filter :active 
	filter :created_at

	index do 
		column :name
		column :page_type do |c|
			collection_values.map{|x| x[0] if x.include? c.page_type}.compact.first
		end
		column :document_file_name 
		column :priority
		column :active
		column :created_at
		default_actions
	end

	form :html =>  {:mutipart => true} do |f|
		f.inputs t("documents_form") do 
			f.input :name
			f.input :page_type, as: :select, :collection =>  collection_values
			f.input :priority
			f.input :active
			f.input :document, as: :file
			f.input :delete_doc, as: :boolean
		end
		f.actions
	end

	show do 
		attributes_table do 
			row :name
			row :active
			row :priority
			row :document_file_name
			row :created_at
		end
	end
end