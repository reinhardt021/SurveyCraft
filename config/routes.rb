Rails.application.routes.draw do
  root 'surveys#new'
  get 'welcome/index'

  resources :surveys, only: [:new, :create, :show] do
    resources :questions, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
