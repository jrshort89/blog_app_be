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
FactoryBot.define do
  factory :spanish_translation_group do
    group_id { 1 }
    spanish_translation_id { 1 }
  end
end
