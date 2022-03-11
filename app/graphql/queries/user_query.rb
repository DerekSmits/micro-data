module Queries
  class UserQuery < Queries::BaseQuery
    type Types::UserType, null:false
    argument :id, ID,required: true

    def resolve(id:)
        User.find(id).as_json
    end
  end
end