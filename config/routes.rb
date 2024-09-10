Rails.application.routes.draw do
  # normal route for user format RESTFUL
  resources :users

  # resources :users, except: [:edit] do
  #   member do
  #     get 'updatefunc', action: :edit
  #   end
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index'
  get '/goodbye', to: 'convert_application#goodbye'
end
