class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_permitted_parameters
  
  def registration
    @user = User.new
  end


  def adress
    session[:nickname] = params[:session][:nickname]
    session[:email] = params[:session][:email]
    session[:password] = params[:session][:password]
    session[:encrypted_password] = params[:session][:encrypted_password]
    session[:last_name] = params[:session][:last_name]
    session[:first_name] = params[:session][:first_name]
    session[:last_name_kana] = params[:session][:last_name_kana]
    session[:first_name_kana] = params[:session][:first_name_kana]
    session[:birth_year] = params[:session][:birth_year]
    session[:birth_month] = params[:session][:birth_month]
    session[:date_of_day] = params[:session][:date_of_day]
    @user = User.new
  end
    
  def credit
    session[:postal_code] = params[:session][:postalcode]
    session[:prefecture] = params[:session][:prefecture]
    session[:city] = params[:session][:city]
    session[:address] = params[:session][:address]
    @user = User.new
  end
  
  def phone
  end  

  def create
    @user = User.new(
      nickname: session[:nickname],
      email: session[:email],
      password: session[:password],
      encrypted_password: session[:encrypted_password],
      last_name: session[:last_name],
      first_name: session[:first_name],
      last_name_kana: session[:last_name_kana],
      first_name_kana: session[:first_name_kana],
      birth_year: session[:birth_year],
      birth_month: session[:birth_month],
      birth_day: session[:birth_day],
      postal_code: session[:postal_code],
      prefecture: session[:prefecture],
      city: session[:city],
      address: session[:address]
    )
   

    if 
      session[:id] = @user.id
      redirect_to  sign_in_done_path
    else
      redirect_to action: 'registration'
    end
    
  end

  def done
    sign_in User.find(session[:id]) unless user_signed_in?
  end



  # private

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,:email ,:password, :encrypted_password, :last_name,:first_name, :last_name_kana, :first_name_kana, :birth_year, :birth_month, :birth_day])
  # end





end