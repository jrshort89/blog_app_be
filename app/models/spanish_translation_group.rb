# == Schema Information
#
# Table name: spanish_translation_groups
#
#  id                     :bigint           not null, primary key
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  group_id               :integer          not null
#  spanish_translation_id :integer          not null
#
class SpanishTranslationGroup < ApplicationRecord
  has_many :groups, through: :spanish_translation_groups
end
