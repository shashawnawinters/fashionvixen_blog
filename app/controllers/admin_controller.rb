class AdminController < ApplicationController  
  def new
  end

  def create

  end

  private
  	def authorize
  		unless is_admin	
  			redirect_to '/'
  		end
  	end
end
