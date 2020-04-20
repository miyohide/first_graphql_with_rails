module Types
  class MutationType < Types::BaseObject
    field :postPhoto, mutation: Mutations::PostPhoto
  end
end
