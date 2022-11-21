# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :create_spanish_translation, mutation: Mutations::Translate::CreateSpanishTranslation
  end
end
