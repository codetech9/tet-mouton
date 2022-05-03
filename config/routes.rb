Rails.application.routes.draw do

  devise_for :users
  get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"
  resources :lands do
    resources :bookings, only: %i[new create]
  end
end
