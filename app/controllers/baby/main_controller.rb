class Baby::MainController < Baby::BaseController
	def index
		@oms = true
		render :template => 'shared/main/index'
	end

	def about
		@department = @@department
		render :template => 'shared/main/about'
	end

	def contacts
		render :template => 'shared/main/contacts'
	end

	def partners
		@partners = Partner.all
		render :template => 'shared/main/partners'
	end

	def discounts
		@discounts = Discount.all
		render :template => 'shared/main/discounts'
	end
end
