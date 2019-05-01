Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  resources :coworkingfilters
  resources :coworkingspaces
 
  get "/coworkingspaces/filtered_spaces/:id", to: "coworkingspaces#filtered_spaces", as: :filtered_spaces
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
