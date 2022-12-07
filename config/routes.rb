Rails.application.routes.draw do

  resources :students, only: [:index, :create, :show, :update, :destroy ] do
    resources :transactions, only: [:index, :create, :show]    
  end
  
  resources :instructors, only: [:index, :create, :show, :update, :destroy]
  resources :schedules, only: [:index, :create, :show, :update, :destroy]
  resources :courses, only: [:index, :create, :show, :update, :destroy]
  resources :subjects, only: [:index, :create, :show, :update, :destroy]
  
end
