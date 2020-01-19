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
end
