module Mutations
  class CreatePost < GraphQL::Schema::RelayClassicMutation
    # TODO: define return fields
    field :post, Types::PostType, null: false

    # TODO: define arguments
    # argument :name, String, required: true
    argument :title, String, required: true
    argument :content, String, required: true
    argument :location_name, String, required: true
    # TODO: define resolve method
    def resolve(title:, content:, location_name:)
      location = Location.find_or_create_by(long_name: location_name)
      post = Post.create(title: title, content: content, location: location, user_id: context[:current_user].id)
      {post: post}
    end
  end
end
