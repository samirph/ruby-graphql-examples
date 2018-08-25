module Types
  class UserType < Types::BaseObject
    field :name, String, null: true
    field :email, String, null: true
    field :posts, [Types::PostType], null: true
  end
end
