class MainController < ApplicationController
	def index
		@oms = Document.oms
	end
end
