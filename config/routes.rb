Rails.application.routes.draw do
  resources :screeners
  resources :check_ins, only: [:new, :create, :show, :update]
  get 'phq_screener', to: 'check_ins#phq_screener'
  root to: "check_ins#new"
end
