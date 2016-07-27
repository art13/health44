# encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :find_company, :get_namespace

  private
  	def find_company
  		@company = Company.find_by_title("ООО “ГИНЕКОЛОГ и Я”")
  	end

  	def get_namespace
  		@namespace = request.fullpath.split('/')[1] if request.fullpath.include?('/') #self.class.parent.to_s.downcase 
  	end
end
