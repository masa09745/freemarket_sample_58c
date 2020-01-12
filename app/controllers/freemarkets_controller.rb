class FreemarketsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @freemarket = Freemarket.new
  end

  def create
    @freemarket = Freemarket.create(freemarket_paramas)
    if @freemarket.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def freemarket_paramas
    params.require(:freemarket).permit(:item, :description, :price, :condition, :ship_charge, :ship_from, :ship_day)
  end

end