class FreemarketsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :buy]

  def index
    @freemarkets = Freemarket.limit(10).order('created_at ASC')
  end

  def show
    @freemarket = Freemarket.includes(:user).find(params[:id])
    prefecture = Prefecture.all
  end

  def new
      @freemarket = Freemarket.new
      @freemarket.item_images.build
  end

  def edit
  end

  def delete
  end

  def buy
    @card = Card.find_by(user_id: current_user.id)
    if @card.present?
      Payjp.api_key = Rails.application.credentials.dig(:payjp, :PAYJP_SECRET_KEY)
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @card_info = customer.cards.retrieve(@card.card_id)
    end
  end

  def create
    @freemarket = Freemarket.new(freemarket_params)
    if @freemarket.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def freemarket_params
    params.require(:freemarket).permit(:item, :description, :price, :condition, :ship_charge, :ship_from, :ship_day, item_images_attributes: [:image_url]).merge(user_id: current_user.id)
  end

end
