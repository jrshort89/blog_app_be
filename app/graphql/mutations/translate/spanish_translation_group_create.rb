# frozen_string_literal: true

module Mutations
  module Translate
    class SpanishTranslationGroupCreate < BaseMutation
      description "Creates a new spanish_translation_group"

      field :spanish_translation_group, Types::SpanishTranslationGroupType, null: false

      argument :spanish_translation_group_input, Types::Input::SpanishTranslationGroupInputType, required: true

      def resolve(spanish_translation_group_input:)
        spanish_translation_group = ::SpanishTranslationGroup.new(**spanish_translation_group_input)
        raise GraphQL::ExecutionError.new "Error creating spanish_translation_group", extensions: spanish_translation_group.errors.to_hash unless spanish_translation_group.save

        { spanish_translation_group: spanish_translation_group }
      end
    end
  end
end
