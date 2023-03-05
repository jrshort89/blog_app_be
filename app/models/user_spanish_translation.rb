# == Schema Information
#
# Table name: user_spanish_translations
#
#  id                     :bigint           not null, primary key
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  spanish_translation_id :integer
#  user_id                :integer
#
class UserSpanishTranslation < ApplicationRecord
    belongs_to :spanish_translation
    belongs_to :user

    validates :spanish_translation_id, uniqueness: true, presence: true
    validates :user_id, presence: true
end
