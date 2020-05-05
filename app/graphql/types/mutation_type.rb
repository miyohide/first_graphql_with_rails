module Types
  class MutationType < Types::BaseObject
    field :postPhoto, mutation: Mutations::PostPhoto
    field :create_user, mutation: Mutations::CreateUser
    field :signin_user, mutation: Mutations::SignInUser
    field :addFakeUsers, mutation: Mutations::AddFakeUsers
  end
end
