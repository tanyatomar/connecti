class UsersController < ApplicationController

# def create
#     user = User.create!(user_params)
#     session[:user_id] = user.id
#     redirect_to root_path
#   end
 
#   private
#     def user_params
#       params.require(:user).permit(:email_address, :password, :avatar)
#     end
  def profile

  	@user = User.find(params[:id])
  	
  end


  def upload_avatar

  	@user = User.find(params[:id])
  	@user.avatar = params[:user][:avatar]
  	@user.save
  	redirect_to request.referrer
  end

end

