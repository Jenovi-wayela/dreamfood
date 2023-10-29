Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'
  get 'about', to: 'pages#about', as: 'about'
  get 'contact', to: 'pages#contact', as: 'contact'
  get 'gallery', to: 'pages#gallery', as: 'gallery'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
