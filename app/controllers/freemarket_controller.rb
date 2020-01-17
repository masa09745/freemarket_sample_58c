class FreemarketController < ApplicationController
  
  def index
    @parents = Category.all.order("id ASC").limit(13)
  end

  def show
    @parents = Category.all.order("id ASC").limit(13)
  end

  def create
  end

  def delete
  end
  
end
