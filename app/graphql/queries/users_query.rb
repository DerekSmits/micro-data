module Queries
  class UsersQuery < Queries::BaseQuery
    type Types::UserType, null: false
    def resolver
      "Заглушка"
    end
  end
end
