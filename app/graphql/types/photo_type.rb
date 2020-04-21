module Types
  class PhotoType < Types::BaseObject
    field :id, ID, null: false
    field :url, String, null: false
    field :name, String, null: false
    field :description, String, null: true

    def url
      "http://yoursite.com/img/#{object.id}.jpg"
    end
  end
end
