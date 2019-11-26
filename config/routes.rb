Rails.application.routes.draw do
  root to: "freemarket#index"
  resources :freemarket
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
