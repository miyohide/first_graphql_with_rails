module Types
  class QueryType < Types::BaseObject
    field :allPhotos, [Types::PhotoType], null: false
    def all_photos
      Photo.all
    end
  end
end
