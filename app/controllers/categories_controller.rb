class CategoriesController < ApplicationController
  def index
    @parents = Category.all.order("id ASC").limit(13)
    @ladys = Category.where(ancestry: 1)
    @mens = Category.where(ancestry: 2)
    @kids = Category.where(ancestry: 3)
    @lifes = Category.where(ancestry: 4)
    @books = Category.where(ancestry: 5)
    @hobbies = Category.where(ancestry: 6)
  end

  def show
    @category  = Category.find(params[:id])
  end
end
