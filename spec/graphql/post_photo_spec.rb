require 'rails_helper'

RSpec.describe 'postPhoto' do
  it 'create photo' do
    query_string = <<-GRAPHQL
mutation {
  postPhoto(input: {
    attributes: {
      name: "test-photo1"
      description: "test-photo1 description"
      postedBy: "user1"
    }
  }) {
    photo {
      name
    }
  }
}
    GRAPHQL

    result = FirstGraphqlSchema.execute(query_string)
    expect(result["data"]["postPhoto"]["photo"]["name"]).to eq "test-photo1"
  end
end