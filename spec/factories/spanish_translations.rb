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
FactoryBot.define do
  factory :spanish_translation do
    spanish_text { "MyString" }
    english_text { "MyString" }
  end
end
