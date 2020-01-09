class FreemarketsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @freemarket = Freemarket.new
  end

  def create
    a = Freemarket.new(params[:item])
    Freemarket.create(item: a)
    binding.pry
    redirect_to root_path
  end

  private
  def freemarket_paramas
    params.permit(:item)
  end

end