class Family::MainController < Family::BaseController
	def index
		@oms = true
		@docs = Document.oms
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
