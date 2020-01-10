Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks'}
  root to: "freemarkets#index"
  get 'freemarkets/show'
  get 'freemarkets/create'
  resource :freemarkets
  resources :users
  get 'users/logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
