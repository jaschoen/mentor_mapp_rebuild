Rails.application.routes.draw do
  resources :demos
  devise_for :users
  resources :events
  resources :profiles
  resources :contacts, only: [:new, :create]
  resources :welcome, only: [:new, :create, :index]
  # root 'demos#new'
  root 'welcome#index'
  get 'tos' => 'tos#index'
  # get '*path' => redirect('/')
end
