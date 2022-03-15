module Queries
  class UsersQuery < Queries::BaseQuery
    type Types::UserType, null: false
    argument :limit,Int, required: false

    def to_h(a)
      arr = []
      a.each do |n|
        user = n.as_json
        arr.push(user)
      end
      arr
    end
    def resolve(limit:)
      to_h(User.all.limit(limit))
    end
  end
end
