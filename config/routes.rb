Rails.application.routes.draw do
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/notice', to: 'posts#clear_message'
  # Defines the root path route ("/")
  root "posts#index"
end
