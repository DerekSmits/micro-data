Rails.application.routes.draw do
  mount_graphql_devise_for(
    User,
    at: "/auth",
    authenticatable_type: Types::UserType,
    operations: {
      login: GraphqlDevise::Mutations::Login
    },
    skip: [:register]
  )
  devise_for :users
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
end
