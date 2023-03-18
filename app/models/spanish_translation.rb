# frozen_string_literal: true

class SpanishTranslation < ApplicationRecord
  has_many :spanish_translation_groups
  has_many :groups, through: :spanish_translation_groups
  has_many :users, through: :user_spanish_translations
  has_many :translation_histories

  validates :spanish_text, uniqueness: true, presence: true
  validates :english_text, uniqueness: true, presence: true
  before_save :downcase_fields

  private

  def downcase_fields
    english_text.downcase!
    spanish_text.downcase!
  end
end
