# frozen_string_literal: true

module Mutations
  module Translate
    class CreateSpanishTranslation < Mutations::BaseMutation
      argument :english_text, String

      field :spanish_translation, Types::SpanishTranslationType

      def resolve(english_text: nil)
        existing_translation = SpanishTranslation.find_by(english_text: english_text)

        unless existing_translation.nil?
          # TODO: don't hardcode user
          translation_history = TranslationHistory.find_by(spanish_translation_id: existing_translation.id,
                                     user_id: 1)
          translation_history.update!(updated_at: Time.now)
          translation_history.increment!(:lookup_count)

          return { spanish_translation: existing_translation }
        end

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
