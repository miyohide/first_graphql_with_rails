module Types
  class PhotoType < Types::BaseObject
    field :id, ID, null: false
    field :url, String, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :category, Types::PhotoCategory, null: false
    field :postedBy, Types::UserType, null: false
    field :taggedUsers, [Types::UserType], null: false
    field :created, Types::DateTime, null: false

    def url
      "http://yoursite.com/img/#{object.id}.jpg"
    end

    def posted_by
      object.users
    end

    def tagged_users
      object.users
    end

    def created
      object.created_at
    end
  end
end
