class FreemarketsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @freemarket = Freemarket.new
    @freemarket.item_images.build
  end

  def create
    @freemarket = Freemarket.create(freemarket_params)
    if @freemarket.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def freemarket_params
    params.require(:freemarket).permit(:item, :description, :price, :condition, :ship_charge, :ship_from, :ship_day, item_images_attributes: [:image_url])
  end

end