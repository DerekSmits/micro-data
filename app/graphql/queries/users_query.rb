module Queries
  class UsersQuery < Queries::BaseQuery
    type [Types::UserType], null: false
    argument :size,Int, required: false

    def resolve(size: 10)
      User.all.limit(size)
    end
  end
end
