Rails.application.routes.draw do
  get 'tasks/new'
  get 'tasks/edit'
  get 'tasks/create'
  get 'tasks/update'
  get 'tasks/destroy'
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
  resource :user, only: [:show]
  resources :works
  resources :tasks
end
