module Mutations
  class AddFakeUsers < BaseMutation
    graphql_name 'AddFakeUser'

    argument :count, Int, required: true

    field :user, Types::UserType, null: true
    field :result, Boolean, null: true

    def resolve(count:)
      github = (0...8).map { ('A'..'Z').to_a[rand(26)]}.join
      u = User.create(github_login: github, name: github, email: "#{github}@example.com", password: "123456")
      {
          user: u,
          result: u.errors.blank?
      }
    end
  end
end
