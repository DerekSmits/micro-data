module Mutations
  class CreatePost < Mutations::BaseMutation
    argument :title, String, required: true
    argument :short, String, required: true
    argument :post, String, required: true
    # argument :user_id, Integer, required: true

    type Types::PostType

    def resolve(title: nil, short: nil, post: nil, user_id: nil)
      context[:current_user].posts.create!(
        title: title,
        short: short,
        post: post,
      )
    end
  end
end
