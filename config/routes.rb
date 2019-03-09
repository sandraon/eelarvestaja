Rails.application.routes.draw do
  resources :outcomes
  resources :incomes
  root :to => 'home#index'
end
