Rails.application.routes.draw do
  resources :check_ins, only: [:new, :create, :show, :update] do
    resources :screeners do 
      resources :scores
      resources :options
    end
  end
  
  root to: "check_ins#new"
end
