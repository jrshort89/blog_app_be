# == Schema Information
#
# Table name: translation_histories
#
#  id                     :bigint           not null, primary key
#  lookup_count           :integer          default(1), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  spanish_translation_id :integer
#  user_id                :integer
#
FactoryBot.define do
  factory :translation_history do
    user_id { 1 }
    spanish_translation_id { 1 }
  end
end
