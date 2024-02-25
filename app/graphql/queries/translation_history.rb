# frozen_string_literal: true

module Queries
  class TranslationHistory < Queries::BaseQuery
    type [Types::SpanishTranslationType], null: false

    def resolve
      user = User.find 1
      translation_history_ids = user.translation_history.map(&:spanish_translation_id)

      SpanishTranslation.joins("inner join translation_histories
                                on spanish_translations.id = translation_histories.spanish_translation_id
                                where spanish_translations.id in (#{translation_history_ids.join(', ')})
                                order by translation_histories.updated_at desc")
    end
  end
end
