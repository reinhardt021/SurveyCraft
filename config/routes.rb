Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'

  resources :surveys, only: [:new, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
