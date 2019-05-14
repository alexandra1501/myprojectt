Rails.application.routes.draw do
  resources :tickets do
    resources :departments

  root 'tickets#index'
  end
end
