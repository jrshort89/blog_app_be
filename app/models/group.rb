# frozen_string_literal: true

class Group < ApplicationRecord
  has_many :spanish_translation_groups
  has_many :spanish_translations, through: :spanish_translation_groups

  validates :name, presence: true, uniqueness: true

  def total_flashcards
    self.spanish_translations.count
  end
end
