Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks'}
  root to: "freemarkets#index"
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
end
