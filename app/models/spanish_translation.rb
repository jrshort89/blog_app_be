class SpanishTranslation < ApplicationRecord
    has_many :spanish_translations
    has_many :users, through: :user_spanish_translations

    validates :spanish_text, uniqueness: true, presence: true
    validates :english_text, uniqueness: true, presence: true
end
