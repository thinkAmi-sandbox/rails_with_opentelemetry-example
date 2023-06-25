Rails.application.routes.draw do
  get '/hello',  to: 'hello#index'
  get '/message_from_child',  to: 'hello#message_from_child'
  post '/child_and_job', to: 'hello#child_and_job'
  # resources :hello, only: :index
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
