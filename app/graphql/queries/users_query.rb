module Queries
  class UsersQuery < Queries::BaseQuery
    type [Types::UserType], null: false
    # argument :limit,Int, required: false

    def resolve()
      User.all
    end
  end
end
