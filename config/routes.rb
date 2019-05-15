Rails.application.routes.draw do
  resources :tickets
  resources :departments

  root 'tickets#index'
end
