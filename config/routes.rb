Rails.application.routes.draw do
  resources :messages
  resources :user_chats
  resources :chats
  resources :heart_strings
  resources :users

  get '/start_chat/:id' => 'heart_strings#chat', as: :start_chat 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
