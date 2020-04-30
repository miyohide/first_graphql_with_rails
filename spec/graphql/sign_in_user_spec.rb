require 'rails_helper'

RSpec.describe 'SignInUser' do
  context 'password is correct' do
    it 'sign in success' do
      user = User.create(name: 'user1', email: 'user1@example.com', password: '123456')
      query_string = <<-GRAPHQL
mutation {
  signinUser(input:{
    credentials: {
      email: "#{user.email}",
      password: "123456"
    }
  }) {
    token
    user {
      name
    }
  }
}
      GRAPHQL

      result = FirstGraphqlSchema.execute(query_string)
      expect(result["data"]["signinUser"]["user"]["name"]).to eq user.name
    end
  end

  context 'password is incorrect' do
    it 'sign in fail' do
      user = User.create(name: 'user1', email: 'user1@example.com', password: '123456')
      query_string = <<-GRAPHQL
mutation {
  signinUser(input:{
    credentials: {
      email: "#{user.email}",
      password: "123456123456"
    }
  }) {
    token
    user {
      name
    }
  }
}
      GRAPHQL

      result = FirstGraphqlSchema.execute(query_string)
      expect(result["data"]["signinUser"]).to eq nil
    end
  end
end
