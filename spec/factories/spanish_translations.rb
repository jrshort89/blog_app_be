FactoryBot.define do
  factory :spanish_translation do
    user_id { 1 }
    spanish_text { "MyString" }
    english_text { "MyString" }
  end
end
