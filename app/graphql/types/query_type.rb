module Types
  class QueryType < Types::BaseObject
    field :totalPhotos, Int, null: false
    def total_photos
      42
    end

    field :allPhotos, [Types::PhotoType], null: false do
      argument :after, Types::DateTime, required: false
    end

    def all_photos(after: Time.new(0, 1, 1))
      Photo.where("created_at >= ?", after)
    end

    field :allUsers, [Types::UserType], null: false
    def all_users
      User.all
    end
  end
end
