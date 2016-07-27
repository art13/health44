class LettersController < ApplicationController
	skip_before_filter :get_namespace

	def create
		@letter = Letter.create(params[:letter])
		if @letter.save
			flash[:notice] = :your_letter_was_successfully_delivered
		else
			flash[:error] = @letter.errors.full_messages
		end
	end
end
