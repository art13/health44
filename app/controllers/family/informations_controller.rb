class Family::InformationsController < ApplicationController
	def index
		render :template => 'shared/informations/index'
	end

	def upload
		file_name = "#{Rails.root}/public/documents/#{params[:file]}"
		if File.exists?(file_name)
			send_file file_name
		else
			render :text => "File not found"
		end	
	end
end
