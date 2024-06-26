Rails.application.routes.draw do
  resources :event_managements
  get 'calendar/home'
  resources :consultations
  resources :comments

devise_scope :user do
  get '/users', to: 'devise/registrations#new'
  get '/users/password', to: 'devise/passwords#new'
  get '/users/sign_out'=> 'devise/sessions#destroy'
  get 'calendar/home'


end
  devise_for :users
  get "home/about" 
  get "posts/myposts"
  resources :posts

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "posts#index"
end
