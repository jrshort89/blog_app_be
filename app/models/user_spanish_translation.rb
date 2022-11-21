class UserSpanishTranslation < ApplicationRecord
    belongs_to :spanish_translation
    belongs_to :user

    validates :spanish_translation_id, uniqueness: true, presence: true
    validates :user_id, presence: true
end
