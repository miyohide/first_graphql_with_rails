module Mutations
  class CreateUser < BaseMutation
    class AuthProviderSignupData < Types::BaseInputObject
      argument :credentials, Types::AuthProviderCredentialsInput, required: false
    end

    argument :name, String, required: true
    argument :auth_provider, AuthProviderSignupData, required: false

    field :user, Types::UserType, null: true
    field :result, Boolean, null: true

    def resolve(name: nil, auth_provider: nil)
      u = User.create(
          name: name,
          email: auth_provider&.[](:credentials)&.[](:email),
          password: auth_provider&.[](:credentials)&.[](:password)
      )
      {
          user: u,
          result: u.errors.blank?
      }
    end
  end
end
