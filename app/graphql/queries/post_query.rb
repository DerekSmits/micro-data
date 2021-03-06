module Queries
  class PostQuery < Queries::BaseQuery
    type Types::PostType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Post.find(id).as_json
    end
  end
end
