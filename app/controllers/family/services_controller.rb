class Family::ServicesController < Family::BaseController
	def index
		@categories = @@department.service_categories
		render :template => 'shared/services/index'
	end
end
