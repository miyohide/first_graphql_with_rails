module Mutations
  class PostPhoto < BaseMutation
    graphql_name 'PostPhoto'

    argument :attributes, Types::PostPhotoAttributes, required: true

    field :photo, Types::PhotoType, null: true
    field :result, Boolean, null: true

    def resolve(attributes:)
      photo = Photo.create(attributes.to_hash)
      {
          photo: photo,
          result: photo.errors.blank?
      }
    end
  end
end
