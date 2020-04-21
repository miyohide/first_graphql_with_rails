module Mutations
  class PostPhoto < BaseMutation
    graphql_name 'PostPhoto'

    field :photo, Types::PhotoType, null: true
    field :result, Boolean, null: true

    argument :name, String, required: true
    argument :description, String, required: false

    def resolve(**args)
      photo = Photo.create(name: args[:name], description: args[:description])
      {
          photo: photo,
          result: photo.errors.blank?
      }
    end
  end
end
