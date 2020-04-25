module Types
  class UserType < Types::BaseObject
    field :github_login, ID, null: false
    field :name, String, null: false
    field :avatar, String, null: true
    field :postedPhotos, [Types::PhotoType], null: true
  end
end
