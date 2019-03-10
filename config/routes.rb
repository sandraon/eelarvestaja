Rails.application.routes.draw do
  devise_for :users
  resources :outcomes
  resources :incomes
  root :to => 'home#index'
end
