Rails.application.routes.draw do
  devise_for :users
  root to: "freemarket#index"
  resources :freemarket
  scope :mypage do
    get 'users/profile'
    get 'users/card'
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
