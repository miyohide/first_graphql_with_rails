module Types
  class MutationType < Types::BaseObject
    field :postPhoto, mutation: Mutations::PostPhoto
    field :create_user, mutation: Mutations::CreateUser
  end
end
