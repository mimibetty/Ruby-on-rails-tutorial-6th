# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#home'
  get '/home', to: 'static_pages#home', as: 'home'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/help', to: 'static_pages#help'
  get '/signup', to: 'users#new'
  # we can have 2 way to define route
  # get 'static_pages/home'
  # get 'static_pages/contact'
  # get 'static_pages/about'
  # get 'static_pages/help'


  # normal route for user format RESTFUL
  resources :microposts
  resources :users
  # resources :users, except: [:edit] do
  #   member do
  #     get 'updatefunc', action: :edit
  #   end
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'users#index'
  get '/goodbye', to: 'convert_application#goodbye'
end
