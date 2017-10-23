Rails.application.routes.draw do
  resources :restaurants
  resources :comments
  resources :favorites
  resources :users
  get '/', to: "users#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
