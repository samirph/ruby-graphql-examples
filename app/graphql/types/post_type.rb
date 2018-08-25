module Types
  class PostType < Types::BaseObject
    field :title, String, null: true
    field :content, String, null: true
    field :user, Types::UserType, null: true
    field :location, Types::LocationType, null: true
  end
end
