Rails.application.routes.draw do
  resources :events
  resources :profiles
  resources :contacts, only: [:new, :create]
  root 'welcome#index'
  get 'tos' => 'tos#index'
  get '*path' => redirect('/')
end
