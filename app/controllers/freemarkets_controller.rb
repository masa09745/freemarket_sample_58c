class FreemarketsController < ApplicationController
  def index
    @freemarkets = Freemarket.limit(10).order('created_at ASC')
  end

  def show
  end

  def new

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

end
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
    params.require(:freemarket).permit(:item, :description, :price, :condition)
  end

end
