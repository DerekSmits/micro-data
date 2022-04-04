# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :username, String
    field :bio, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :email, String, null: false
    field :encrypted_password, String, null: false
    field :reset_password_token, String
    field :reset_password_sent_at, GraphQL::Types::ISO8601DateTime
    field :remember_created_at, GraphQL::Types::ISO8601DateTime
    field :authentication_token, String, null: false
    # def authentication_token
    #   if object.gql_id != context[:current_user]&.gql_id
    #     raise GraphQL::UnauthorizedFieldError,
    #           "Unable to access authentication_token"
    #   end
    #
    #   object.authentication_token
    # end
  end
end
