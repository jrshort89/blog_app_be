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
FactoryBot.define do
  factory :user_spanish_translation do
    user_id { 1 }
    spanish_translation_id { 1 }
  end
end
