Rails.application.routes.draw do
  mount API::Base, at: "/"
  get 'welcome/index'
  root 'welcome#index'
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
