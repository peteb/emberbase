Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }

  get 'static/index'
  root 'static#index'
  
  resources :news
end
