Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :blogs
  resources :users
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
  end
  
  post "/graphql", to: "graphql#execute"
end
