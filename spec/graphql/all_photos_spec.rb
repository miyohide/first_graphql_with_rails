require 'rails_helper'

RSpec.describe 'allPhotos' do
  context 'no after argument' do
    before do
      u = User.create(github_login: 'user1', name: 'user1')
      @p1 = Photo.create(name: 'photo1', user: u)
      @p2 = Photo.create(name: 'photo2', user: u)
      @query_string = <<-GRAPHQL
{
  allPhotos {
    name
  }
}
      GRAPHQL
    end

    it 'return all photo data' do
      result = FirstGraphqlSchema.execute(@query_string)
      expect(result['data']['allPhotos'].size).to eq(2)
      expect(result['data']['allPhotos'][0]['name']).to eq(@p1.name)
      expect(result['data']['allPhotos'][1]['name']).to eq(@p2.name)
    end
  end

  context 'call with after argument' do
    before do
      u = User.create(github_login: 'user1', name: 'user1')
      @p1 = Photo.create(name: 'photo1', user: u)
      @p2 = Photo.create(name: 'photo2', user: u)
      t = (Time.now + 1.year).to_s
      @query_string = <<-GRAPHQL
{
  allPhotos(after: "#{t}") {
    name
  }
}
      GRAPHQL
    end

    it 'return no photo data' do
      result = FirstGraphqlSchema.execute(@query_string)
      expect(result['data']['allPhotos'].size).to eq(0)
    end
  end
end
