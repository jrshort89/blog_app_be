# frozen_string_literal: true

FactoryBot.define do
  factory :blog do
    user
    title { 'A Blog Title' }
    body  { 'A blog body.' }
  end
end
