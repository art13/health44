class Baby::ServicesController < Baby::BaseController
	def index
		@categories = @@department.service_categories
		render :template => 'shared/services/index'
	end
end
