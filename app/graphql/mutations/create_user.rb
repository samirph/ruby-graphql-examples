module Mutations
  class CreateUser < GraphQL::Schema::RelayClassicMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false
    field :user, Types::UserType, null: false

    # TODO: define arguments
    # argument :name, String, required: true
    argument :name, String, required: true
    argument :email, String, required: true

    # TODO: define resolve method
    def resolve(name:, email:)
      user = User.create(name: name, email: email)
      {user: user}
    end
  end
end
