# frozen_string_literal: true

module Types
  class SpanishTranslationType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer
    field :spanish_text, String
    field :english_text, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
