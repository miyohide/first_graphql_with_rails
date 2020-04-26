require 'rails_helper'

RSpec.describe 'TotalPhotos' do
  it 'return 42' do
    query_string = <<-GRAPHQL
{
  totalPhotos
}
    GRAPHQL

    result = FirstGraphqlSchema.execute(query_string)
    expect(result["data"]["totalPhotos"]).to eq 42
  end
end