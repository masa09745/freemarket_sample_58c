class CardsController < ApplicationController
  require "payjp"

  def show
    @card = Card.where(user_id: current_user.id).first
    if @card.present?
      Payjp.api_key = Rails.application.credentials.dig(:payjp, :PAYJP_SECRET_KEY)
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @card_info = customer.cards.retrieve(@card.card_id)
    end
  end

  def new
    card = Card.where(user_id: current_user.id)
    redirect_to action: 'show' if card.exists?
  end

  def pay
    Payjp.api_key = Rails.application.credentials.dig(:payjp, :PAYJP_SECRET_KEY)
    if params['payjp_token'].blank?
      redirect_to action: 'new'
    else
      customer = Payjp::Customer.create(
      description: 'Fmarket',
      email: current_user.email,
      card: params['payjp_token'],
      metadata: {user_id: current_user.id}
      )
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to action: 'show'
        flash[:notice] = 'クレジットカードの登録が完了しました'
      else
        redirect_to action: 'pay'
        flash[:alert] = 'クレジットカード登録に失敗しました'
      end
    end
  end

  def delete
    card = Card.where(user_id: current_user.id).first
    if card.present?
      Payjp.api_key = Rails.application.credentials.dig(:payjp, :PAYJP_SECRET_KEY)
      customer = Payjp::Customer.retrieve(card.customer_id)
      customer.delete
      card.delete
    end
      redirect_to action: 'show'
      flash[:notice] = 'クレジットカードの削除が完了しました'
  end

end