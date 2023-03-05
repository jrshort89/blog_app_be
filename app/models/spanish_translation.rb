# == Schema Information
#
# Table name: spanish_translations
#
#  id           :bigint           not null, primary key
#  english_text :string
#  spanish_text :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class SpanishTranslation < ApplicationRecord
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
