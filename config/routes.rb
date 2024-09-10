Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/contact'
  get  'static_pages/about'

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
