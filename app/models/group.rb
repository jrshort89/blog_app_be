# == Schema Information
#
# Table name: groups
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Group < ApplicationRecord
  has_many :spanish_translations, through: :spanish_translation_groups

  validates :name, presence: true, uniqueness: true
end
