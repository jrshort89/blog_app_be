# frozen_string_literal: true

FactoryBot.define do
  factory :spanish_translation do
    spanish_text { 'spanish word' }
    english_text { 'english word' }
  end
end
