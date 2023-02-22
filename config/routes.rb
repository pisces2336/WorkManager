Rails.application.routes.draw do
  get 'works/index'
  get 'works/show'
  get 'works/new'
  get 'works/edit'
  get 'works/create'
  get 'works/update'
  get 'works/destroy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'users#show'
  resources :users, only: [:show]
  resources :works
  resources :tasks
end
