Rails.application.routes.draw do
  resources :tweets
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users ,only: [:new, :show, :create]
  root :to => 'tweets#index'
  # post 'tweets/:id', to:'likes#create'
  resources :likes ,only: [:destroy] 
  resources :tweets do
    resources :likes, only: [:create, :destroy]
  end 
end
