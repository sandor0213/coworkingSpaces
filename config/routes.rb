Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  resources :filters
  resources :spaces
  resources :userparams
  resources :comments
  resources :orders
  resources :suggestions
  resources :messages
  get "/spaces/filtered_spaces/:id", to: "spaces#filtered_spaces", as: :filtered_spaces
  get "/messages/send_no_responder_messages", to: "messages#send_no_responder_messages", as: :send_no_responder_messages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
