module Mutations
  class CreateUser < Mutations::BaseMutation
    argument :username, String, required: true
    argument :email, String, required: true
    argument :password, String, required: true
    argument :bio, String, required: true

    type Types::UserType

    def resolve(username: nil,email: nil,password: nil,bio: nil)
      User.create!(
        username: username,
        email: email,
        password: password,
        bio: bio
      )
    end
  end
end