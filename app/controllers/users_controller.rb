class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
  end

  def profile
  end

  def logout
  end

  def list
    @freemarkets = Freemarket.where(user_id: current_user.id)
  end
end
