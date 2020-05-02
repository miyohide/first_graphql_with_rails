require 'graphql/client'
require 'graphql/client/http'

h = GraphQL::Client::HTTP.new('http://localhost:3000/graphql')

s = GraphQL::Client.load_schema(h)
c = GraphQL::Client.new(schema: s, execute: h)
Q = c.parse <<-GraphQL
query {
  totalUsers, totalPhotos
}
GraphQL

result = c.query(Q)
total_users = result.data.total_users
total_photos = result.data.total_photos

p "total users = #{total_users}, total photos = #{total_photos}"
