require 'rails_helper'

RSpec.describe 'create_user' do
  it 'create user' do
    user_name = "test-user"
    query_string = <<-GRAPHQL
mutation {
  createUser(input: {
    name: "#{user_name}"
    authProvider: {
      credentials: {
        email: "#{user_name}@example.com"
        password: "123456"
      }
    }
  }) {
    user {
      name
    }
  }
}
    GRAPHQL

    result = FirstGraphqlSchema.execute(query_string)
    expect(result["data"]["createUser"]["user"]["name"]).to eq user_name
  end
end
