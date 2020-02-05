class FreemarketsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :buy, :exhibit]

  def index
    @freemarkets = Freemarket.where(status: "1").limit(10).order('created_at ASC')
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

  def destroy
    @freemarket = find_freemarket_by_id
    @freemarket.destroy
    redirect_to list_users_path
    flash[:notice] = '削除しました'
  end

  def exhibit
    @freemarket = Freemarket.includes(:user).find(params[:id])
    prefecture = Prefecture.all
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
    if @freemarket.item_images.blank?
      @freemarket.errors.add(:image_url, "画像を選択してください")
      @freemarket.item_images.build
      render "new"
      return
    end
    if @freemarket.save
      redirect_to root_path
    else
      render "new"
    end
  end



  private
  def freemarket_params
    params.require(:freemarket).permit(:item, :description, :price, :condition, :ship_charge, :ship_from, :ship_day, item_images_attributes: [:image_url]).merge(user_id: current_user.id)
  end

  def find_freemarket_by_id
    Freemarket.find(params[:id])
    end

end
