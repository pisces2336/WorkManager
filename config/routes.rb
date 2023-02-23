Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'users#show'
  resource :user, only: [:show]
  resources :works do
    resources :tasks
  end
end
