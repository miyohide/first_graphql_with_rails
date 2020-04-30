require 'rails_helper'

RSpec.describe 'TotalPhotos' do
  before do
    u = User.create(github_login: 'user1', name: 'user1')
    @data_size = 13
    @data_size.times do |i|
      Photo.create(name: "photo#{i}", user: u)
    end
  end

  it 'return photo count' do
    query_string = <<-GRAPHQL
{
  totalPhotos
}
    GRAPHQL

    result = FirstGraphqlSchema.execute(query_string)
    expect(result["data"]["totalPhotos"]).to eq @data_size
  end
end