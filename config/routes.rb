Rails.application.routes.draw do
  
  resources :comments
  devise_for :users
  authenticate :user do
    resources :categories
    resources :articles
  end
  root 'blogslots#index'
	  get 'article/lists', to: 'blogslots#articles'
	  get ':id',to: 'blogslots#show'
    get '/', to: 'blogslots#index'
	  post '/commenting', to: 'comments#create'
	  get 'users/logout', to: 'users#logout'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Blogslot::Api => '/api'
  # mount API::Root => '/'
end
