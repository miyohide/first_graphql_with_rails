module Types
  class PostPhotoAttributes < Types::BaseInputObject
    argument :name, String, required: true
    argument :category, String, required: false
    argument :description, String, required: false
    argument :postedBy, String, required: true
  end
end
