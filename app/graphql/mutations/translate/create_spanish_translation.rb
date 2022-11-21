# frozen_string_literal: true

module Mutations
  module Translate
    class CreateSpanishTranslation < Mutations::BaseMutation
      argument :english_text, String

      field :spanish_translation, Types::SpanishTranslationType

      def resolve(english_text: nil)
        # todo: fix so the fallback to a lookup actually works
        { spanish_translation: TranslateService.new(english_text).call ||= SpanishTranslation.find_by(english_text: english_text) }
      end
    end
  end
end
