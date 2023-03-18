# frozen_string_literal: true

module Types
  module Input
    class SpanishTranslationGroupInputType < Types::BaseInputObject
      argument :id, ID, required: false
      argument :group_id, Integer, required: false
      argument :spanish_translation_id, [Integer], required: false
      argument :created_at, GraphQL::Types::ISO8601DateTime, required: false
      argument :updated_at, GraphQL::Types::ISO8601DateTime, required: false
    end
  end
end
