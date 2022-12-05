Rails.application.routes.draw do
  resources :admissions, only: [:create]
  resources :hospitals, only: [:index, :show, :update, :destroy]
  resources :patients, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
