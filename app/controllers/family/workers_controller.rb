class Family::WorkersController < Family::BaseController

	def index
		@workers = @@department.workers.sort_by{|w| w[:list_option]}
		render :template => 'shared/workers/index'
	end
	
end
