class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
  end
  
  def profile
    @user = User.find_by(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to profile_users_path(user)
      flash[:notice] = '変更しました'
    else
      render 'profile'
      flash[:alert] = '変更に失敗しました'
    end
  end

  def logout
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :profile_content)
  end

end
