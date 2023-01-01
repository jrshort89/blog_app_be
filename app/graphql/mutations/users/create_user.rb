# frozen_string_literal: true

module Mutations
  module Users
    class CreateUser < Mutations::BaseMutation
      argument :email, String

      field :user, Types::UserType, null: false

      def resolve(email: nil)
        user = User.find_or_create_by(email: email)

        { user: user }
      end
    end
  end
end
