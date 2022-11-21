# frozen_string_literal: true

module Mutations
  module Translate
    class CreateSpanishTranslation < Mutations::BaseMutation
      argument :english_text, String

      field :spanish_translation, Types::SpanishTranslationType

      def resolve(english_text: nil)
        existing_translation = SpanishTranslation.find_by(english_text: english_text)
        return { spanish_translation: existing_translation } unless existing_translation.nil?

        begin
          new_translation = TranslateService.new(english_text).call
        rescue StandardError => e
          e
        end

        { spanish_translation: new_translation }
      end
    end
  end
end
