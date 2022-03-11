module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.


    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end
    # field :user, Types::UserType, "Find user by id", null: false do
    #   argument :id, ID, required: true
    # end
    # def user(id:)
    #   User.find(id).as_json
    # end
    field :user, resolver: Queries::UserQuery
    field :users, resolver: Queries::UsersQuery
    field :post, resolver: Queries::PostQuery
    end
    def post(id:)
      Post.find(id).as_json
    end
  end
end
