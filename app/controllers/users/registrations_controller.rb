class Users::RegistrationsController < Devise::RegistrationsController
  
  require "payjp"


  def registration
    @user = User.new
    session[:user] = @user
  end


  def adress
    params[:user][:birthday] = date_create
    session[:user] = user_params


    @user = User.new
    @user.build_deliver_address 

    session[:deliver_address] = @user.deliver_address
    # session[:nickname] = params[:session][:nickname]
    # session[:email] = params[:session][:email]
    # session[:password] = params[:session][:password]
    # session[:user_last_name] = params[:session][:user_last_name]
    # session[:user_first_name] = params[:session][:user_first_name]
    # session[:user_last_name_kana] = params[:session][:user_last_name_kana]
    # session[:user_first_name_kana] = params[:session][:user_first_name_kana]
    # session[:birth_year] = params[:session][:birth_year]
    # session[:birth_month] = params[:session][:birth_month]
    # session[:birth_day] = params[:session][:birth_day]
  end
    
  def credit

    session[:user]["last_name"]        =   user_params[:last_name]
    session[:user]["first_name"]       =   user_params[:first_name]
    session[:user]["last_name_kana"]   =   user_params[:last_name_kana]
    session[:user]["first_name_kana"]  =   user_params[:first_name_kana]
    # アドレスデータをセッションに格納
    session[:deliver_address] = user_params[:deliver_address_attributes]
    # session[:last_name] = params[:session][:last_name]
    # session[:first_name] = params[:session][:first_name]
    # session[:last_name_kana] = params[:session][:last_name_kana]
    # session[:first_name_kana] = params[:session][:first_name_kana]
    # session[:postal_code] = params[:session][:postal_code]
    # session[:prefecture] = params[:session][:prefecture]
    # session[:city] = params[:session][:city]
    # session[:street_address] = params[:session][:street_address]
  end
  
  def phone
  end  

  def complete
    Payjp.api_key = Rails.application.credentials.dig(:payjp, :PAYJP_SECRET_KEY)

    if params[:payjp_token].present?
      @customer = Payjp::Customer.create(
        description: 'Fmarket',
        email: session[:user][:email],
        card: params[:payjp_token],
      )
    
    else
      render :credit
      return
    end
      

    @user = User.new(session[:user])
    @user.build_deliver_address(session[:deliver_address])
    @user.cards.build(
      user_id:        @user.id,
      customer_id:    @customer.id,
      card_id:        @customer.default_card,
    )
    
    # @user = User.new(
    #   nickname: session[:nickname],
    #   email: session[:email],
    #   password: session[:password],
    #   user_last_name: session[:user_last_name],
    #   user_first_name: session[:user_first_name],
    #   user_last_name_kana: session[:user_last_name_kana],
    #   user_first_name_kana: session[:user_first_name_kana],
    #   birth_year: session[:birth_year],
    #   birth_month: session[:birth_month],
    #   birth_day: session[:birth_day],
      
    # )
    # @user.deliver_address = @user.build_deliver_address(
    #   last_name: session[:last_name],
    #   first_name: session[:first_name],
    #   last_name_kana: session[:last_name_kana],
    #   first_name_kana: session[:first_name_kana],
    #   postal_code: session[:postal_code],
    #   prefecture: session[:prefecture],
    #   city: session[:city],
    #   street_address: session[:street_address]
    # )

    # @user.save
    # @user.deliver_address.save
    
    #  binding.pry
     
    if @user.save
      user = @user
      session.clear
      session[:id] = @user.id
      sign_in User.find(session[:id]) unless user_signed_in?
    else
      redirect_to action: 'registration'
    end
    
  end

  def done
  end
  
private

def user_params
  params.require(:user).permit(
    :nickname,
    :email,
    :password,
    :first_name,
    :last_name,
    :first_name_kana,
    :last_name_kana,
    :birthday,
    :tel,
    deliver_address_attributes:[
      :postal_code,
      :prefecture,
      :city,
      :street_address,
    ]
  )
end


def date_create
  date = params[:birthday]
  if date["birthday(1i)"].empty? && date["birthday(2i)"].empty? && date["birthday(3i)"].empty?
    params[:user][:birthday] = ""
    return
  end

  Date.new date["birthday(1i)"].to_i,date["birthday(2i)"].to_i,date["birthday(3i)"].to_i

end




end