module Types
  class LocationType < Types::BaseObject
    field :long_name, String, null: true
    field :posts, [Types::PostType], null: true
  end
end
