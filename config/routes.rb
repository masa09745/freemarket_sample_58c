Rails.application.routes.draw do


  devise_for :users, controllers: { 
    sessions: "users/sessions",
    registrations: "users/registrations",
    passwords: "users/passwords",
    omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "freemarket#index"
   
  
  resources :freemarkets do
    collection do
      get 'buy', to: 'freemarkets#buy'
      get 'item', to: 'freemarkets#item'
    end
  end

  scope :mypage do
    resources :users do
      collection do
        get 'profile', to: 'users#profile'
        get 'logout', to: 'users#logout'
      end
    end
  end
  
  scope :mypage do
    resources :cards, only: [:show, :new] do
      collection do
        post 'show', to: 'cards#show'
        post 'pay', to: 'cards#pay'
        post 'delete', to: 'cards#delete'
        post 'buy', to: 'cards#buy'
      end
    end
  end

  
  devise_scope :user do
    get 'sign_in/registrstion'=>'users/registrations#registration'
    get "sign_in/address" => "users/registrations#adress"
    get "sign_in/credit" => "users/registrations#credit"
    get "sign_in/completed" => "users/registrations#create"
    get "sign_in/done" => "users/registrations#done"
  end  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
