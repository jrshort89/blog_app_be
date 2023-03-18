# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :spanish_translation_group_create, mutation: Mutations::Translate::SpanishTranslationGroupCreate
    field :group_create, mutation: Mutations::GroupCreate
    field :create_spanish_translation, mutation: Mutations::Translate::CreateSpanishTranslation
    field :create_user, mutation: Mutations::Users::CreateUser
  end
end
