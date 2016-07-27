# encoding: utf-8
class Baby::BaseController < ApplicationController
	before_filter :get_department

	private
		def get_department
			@@department = Department.find_by_title("Крепыш")
		end
end
