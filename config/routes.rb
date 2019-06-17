Rails.application.routes.draw do
  devise_for :users
   scope "(:locale)", locale: /en|uk/ do
  root 'pages#index'
  resources :filters
  resources :spaces
  resources :userparams
  resources :comments
  resources :orders
  resources :suggestions
  resources :messages
<<<<<<< HEAD
  get "/spaces/filtered_spaces/:id", to: "spaces#filtered_spaces", as: :filtered_spaces 
=======
  get "/spaces/filtered_spaces/:id", to: "spaces#filtered_spaces", as: :filtered_spaces
  get "send_no_responder_messages", to: "messages#send_no_responder_messages", as: :send_no_responder_messages
  post "post_no_responder_messages", to: "messages#post_no_responder_messages", as: :post_no_responder_messages
>>>>>>> develop
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 end 
end