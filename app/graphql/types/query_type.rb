module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :users, [UserType], null: true,
      description: "Users"
    def users
      User.all
    end

    field :user, UserType, null: true do
      argument :id, ID, required: true
    end
    def user(id:)
      User.find(id)
    end

    field :region_autocomplete, GoogleAutocompleteType, null: true do
      argument :term, String, required: true
    end
    def region_autocomplete(term:)
      res = Location.google_autocomplete(term)
      res[:predictions][0]
    end

    field :github_org, GithubOrgType, null: true do
      argument :org_name, String, required: true
    end
    def github_org(org_name:)
      res = HTTParty.get('https://api.github.com/orgs/'+org_name).parsed_response
    end
  end
end
