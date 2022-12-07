Rails.application.routes.draw do
  resources :students, only: [:index, :create, :show, :update, :destroy ]
  resources :instructors, only: [:index, :create, :show, :update, :destroy]
  
end
