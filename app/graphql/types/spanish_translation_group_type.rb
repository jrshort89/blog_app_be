# frozen_string_literal: true

module Types
  class SpanishTranslationGroupType < Types::BaseObject
    field :id, ID, null: false
    field :group_id, Integer
    field :spanish_translation_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
