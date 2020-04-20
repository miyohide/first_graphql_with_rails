module Types
  class QueryType < Types::BaseObject
    field :totalPhotos, Int, null: false
    def total_photos
      42
    end

    field :allPhotos, [Types::PhotoType], null: false
    def all_photos
      Photo.all
    end
  end
end
