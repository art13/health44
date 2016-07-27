class Baby::WorkersController < Baby::BaseController

	def index
		@workers = @@department.workers.sort_by{|w| w[:list_position]}
		render :template => 'shared/workers/index'
	end

end
