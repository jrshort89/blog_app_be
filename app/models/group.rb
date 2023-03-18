class Group < ApplicationRecord
  has_many :spanish_translation_groups
  has_many :spanish_translations, through: :spanish_translation_groups

  validates :name, presence: true
end
