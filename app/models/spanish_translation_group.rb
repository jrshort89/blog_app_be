class SpanishTranslationGroup < ApplicationRecord
  belongs_to :group
  belongs_to :spanish_translation

  validates :spanish_translation, uniqueness: { scope: :group_id }
end
