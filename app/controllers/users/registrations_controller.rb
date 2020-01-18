class Users::RegistrationsController < Devise::RegistrationsController
  
  def registration
  end


  def adress
    session[:nickname] = params[:session][:nickname]
    session[:email] = params[:session][:email]
    session[:password] = params[:session][:password]
    session[:user_last_name] = params[:session][:user_last_name]
    session[:user_first_name] = params[:session][:user_first_name]
    session[:user_last_name_kana] = params[:session][:user_last_name_kana]
    session[:user_first_name_kana] = params[:session][:user_first_name_kana]
    session[:birth_year] = params[:session][:birth_year]
    session[:birth_month] = params[:session][:birth_month]
    session[:birth_day] = params[:session][:birth_day]
  end
    
  def credit
    session[:last_name] = params[:session][:last_name]
    session[:first_name] = params[:session][:first_name]
    session[:last_name_kana] = params[:session][:last_name_kana]
    session[:first_name_kana] = params[:session][:first_name_kana]
    session[:postal_code] = params[:session][:postal_code]
    session[:prefecture] = params[:session][:prefecture]
    session[:city] = params[:session][:city]
    session[:street_address] = params[:session][:street_address]
  end
  
  def phone
  end  

  def create
    @user = User.new(
      nickname: session[:nickname],
      email: session[:email],
      password: session[:password],
      user_last_name: session[:user_last_name],
      user_first_name: session[:user_first_name],
      user_last_name_kana: session[:user_last_name_kana],
      user_first_name_kana: session[:user_first_name_kana],
      birth_year: session[:birth_year],
      birth_month: session[:birth_month],
      birth_day: session[:birth_day],
      
    )
    @user.deliver_address = @user.build_deliver_address(
      last_name: session[:last_name],
      first_name: session[:first_name],
      last_name_kana: session[:last_name_kana],
      first_name_kana: session[:first_name_kana],
      postal_code: session[:postal_code],
      prefecture: session[:prefecture],
      city: session[:city],
      street_address: session[:street_address]
    )

    @user.save
    @user.deliver_address.save
    

     
    if @user.save
      redirect_to  sign_in_done_path
    else
      redirect_to action: 'registration'
    end
    
  end

  def done
  end








end