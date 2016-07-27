# encoding: utf-8
class Family::BaseController < ApplicationController
	before_filter :get_department

	private
		def get_department
			@@department = Department.find_by_title("Центр здоровья семьи")
		end
end
