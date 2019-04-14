Rails.application.routes.draw do
  devise_for :users
  get 'tasks/index'
  get 'tasks/create'
  get 'tasks/new'
  get 'tasks/show'
  get 'tasks/edit'
  get 'task/index'
  get 'task/new'
  get 'task/edit'
  get 'task/destroy'
  get 'welcome/index'

  post 'tasks/new'

  post 'api/v1/tasks/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :tasks
    end
  end
  resources :tasks
  root 'welcome#index'
  # root 'devise/sessions#new'

end
