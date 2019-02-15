Rails.application.routes.draw do
  get '/current_user', to: 'users#show', as: 'current_user'
  resources :photos
  resources :messages
  resources :user_chats
  resources :chats
  resources :heart_strings
  resources :users

  get '/start_chat/:heart_string_id' => 'heart_strings#chat', as: :start_chat
  # post '/chat/:id', to: "chat#message"

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
