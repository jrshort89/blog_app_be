# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_spanish_translation, mutation: Mutations::Translate::CreateSpanishTranslation
    field :create_user, mutation: Mutations::Users::CreateUser
  end
end
