class Baby::InformationsController < ApplicationController
	before_filter :get_docs
	def index
		render :template => 'shared/informations/index'
	end

	def upload
		file_name = "#{Rails.root}/public/#{params[:file]}"
		if File.exists?(file_name)
			send_file file_name
		else
			render :text => "File not found"
		end	
	end
end
