Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks'}
  root to: "freemarket#index"
    get 'freemarket/show'
    get 'freemarket/create'
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
