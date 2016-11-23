Rails.application.routes.draw do
  resources :articles
  resources :comments
  devise_for :users
  root 'blogslots#index'
	  get 'article/lists', to: 'blogslots#articles'
	  get ':id',to: 'blogslots#show'
	  post '/', to: 'comments#create'
	  get 'users/logout', to: 'users#logout'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
