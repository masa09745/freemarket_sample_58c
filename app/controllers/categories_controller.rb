class CategoriesController < ApplicationController
  def index
  end

  def show
    @parents = Category.all.order("id ASC").limit(13)
    @category  = Category.find(params[:id])
    @children = Category.find(params[:id]).children
    @parent = Category.find(params[:id])
  end
end
