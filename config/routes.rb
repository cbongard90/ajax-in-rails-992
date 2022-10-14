Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show] do
    resources :reviews, only: :create
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
