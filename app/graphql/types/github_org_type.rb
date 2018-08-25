module Types
  class GithubOrgType < Types::BaseObject
    field :login, String, null: true
    field :description, String, null: true
    field :name, String, null: true
    field :company, String, null: true
    field :location, String, null: true
    field :repos, [Types::GithubOrgRepoType], null: true, 
      resolve: ->(obj, args, ctx) {
        res = HTTParty.get('https://api.github.com/orgs/'+obj['name']+'/repos').parsed_response
      }
  end
end
