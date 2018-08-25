module Types
  class GithubOrgRepoType < Types::BaseObject
    field :full_name, String, null: true
    field :description, String, null: true
  end
end
