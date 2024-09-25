# frozen_string_literal: true

Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  root 'static_pages#home'
  get '/home', to: 'static_pages#home', as: 'home'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/help', to: 'static_pages#help'
  get '/signup', to: 'users#new'
  get  '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :account_activations, only: [:edit]
  resources :microposts,  only: [:create, :destroy]
  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :relationships, only: [:create, :destroy]
  # resources :users, except: [:edit] do
  #   member do
  #     get 'updatefunc', action: :edit
  #   end
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'users#index'
  get '/goodbye', to: 'convert_application#goodbye'
end
