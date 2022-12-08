Rails.application.routes.draw do

  resources :students, only: [:index, :create, :show, :update, :destroy] do
    resources :transactions, only: [:index, :create, :show]    
  end
  
  resources :instructors, only: [:index, :create, :show, :update, :destroy]
  resources :schedules, only: [:index, :create, :show, :update, :destroy]
  resources :courses, only: [:index, :create, :show, :update, :destroy]
  resources :subjects, only: [:index, :create, :show, :update, :destroy]
  resources :transactions, only: [:index, :create, :show] 

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  
end
