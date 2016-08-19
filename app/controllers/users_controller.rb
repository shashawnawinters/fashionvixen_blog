class UsersController < ApplicationController
	def index 
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # def show
 #    @user = User.find(params[:id])
	# end

	def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/login'
    else
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:username, :password, :email, :admin)
  end


end
