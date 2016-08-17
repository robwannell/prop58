class UsersController < ApplicationController
 before_action :set_user, only: [:show, :edit, :update, :destroy]
before_filter :authorize


 def index
  @users = User.all
 end
 
 
  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      
      redirect_to users_path, notice: 'User has been added!'
    else
      redirect_to '/signup'
    end
  end
  
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to admin_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
 # Use callbacks to share common setup or constraints between actions.
 def set_user
   @user = User.find(params[:id])
 end
 
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end