class Types::PostPhotoInput < Types::BaseInputObject
  argument :name, String, required: true
  argument :category, String, required: false
  argument :description, String, required: false
end
