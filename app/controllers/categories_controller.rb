class CategoriesController < ApplicationController
  def index
    @parents = Category.all.order("id ASC").limit(13)
    @ladys = Category.where(ancestry: 1)
    @mens = Category.where(ancestry: 2)
    @kids = Category.where(ancestry: 3)
  end

  def show
    @category  = Category.find(params[:id])
  end
end
