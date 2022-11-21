class SpanishTranslation < ApplicationRecord
  has_many :spanish_translations
  has_many :users, through: :user_spanish_translations

  validates :spanish_text, uniqueness: true, presence: true
  validates :english_text, uniqueness: true, presence: true
  before_save :downcase_fields

  private

  def downcase_fields
    english_text.downcase!
    spanish_text.downcase!
  end
end
