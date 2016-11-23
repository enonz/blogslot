Rails.application.routes.draw do
  
  devise_for :users
  root 'blogslots#index'
  get 'articles', to: 'blogslots#articles'
  get ':id',to: 'blogslots#show'
  post '/', to: 'comments#create'
  get 'users/logout', to: 'users#logout'
  resources :articles
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
