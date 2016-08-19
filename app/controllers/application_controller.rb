class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

	def is_admin
  		session[:is_admin]
	end
end
