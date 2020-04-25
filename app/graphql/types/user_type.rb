module Types
  class UserType < Types::BaseObject
    field :github_login, ID, null: false
    field :name, String, null: false
    field :avatar, String, null: true
    field :postedPhotos, [Types::PhotoType], null: true
    field :inPhotos, [Types::PhotoType], null: false

    def posted_photos
      object.photos
    end

    def in_photos
      object.in_photos
    end
  end
end
