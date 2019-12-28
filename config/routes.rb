Rails.application.routes.draw do

  devise_for :users, controllers: { 
    sessions: "users/sessions",
    registrations: "users/registrations",
    passwords: "users/passwords",
    omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "freemarket#index"
    get 'freemarket/show'
    get 'freemarket/create'
    get 'freemarket/delete'
  scope :mypage do
    get 'users/profile'
    get 'users/card'
    get 'users/card/create'
    get 'users/show'
    get 'users/logout'
    resources :users
  end
  scope :mypage do
    get 'cards/create'
    resources :cards
  end
  
  scope :users do
    get 'sign_in/registrstion',to:'users/registrations#registration'
    post "sign_in/number" => "users/registrations#phone"
    post "sign_in/address" => "users/registrations#address"
    post "sign_in/credit" => "devise/registrations#credit"
    post "sign_in/completed" => "users/registrations#create"
    get "sign_in/done" => "users/registrations#done"
  end  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
