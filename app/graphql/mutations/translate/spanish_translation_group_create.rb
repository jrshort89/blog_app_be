# frozen_string_literal: true

module Mutations
  module Translate
    class SpanishTranslationGroupCreate < BaseMutation
      description 'Creates a new spanish_translation_group'

      field :spanish_translation_group, [Types::SpanishTranslationGroupType], null: false

      argument :spanish_translation_group_input, Types::Input::SpanishTranslationGroupInputType, required: true

      def resolve(spanish_translation_group_input:)
        spanish_translation_group = spanish_translation_group_input.spanish_translation_id.map do |spanish_translation_id|
          ::SpanishTranslationGroup.new(group_id: spanish_translation_group_input.group_id, spanish_translation_id:)
        end

        unless spanish_translation_group.each(&:save)
          raise GraphQL::ExecutionError.new 'Error creating spanish_translation_group',
                                            extensions: spanish_translation_group.errors.to_hash
        end

        { spanish_translation_group: }
      end
    end
  end
end
