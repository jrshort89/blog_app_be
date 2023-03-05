# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string
#  first_name      :string
#  last_name       :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
FactoryBot.define do
  factory :user do
    first_name { 'John' }
    last_name  { 'Doe' }
    email { 'test@test.com' }
    password { 'password' }
  end
end

def user_with_blogs(blogs_count: 5)
  FactoryBot.create(:user) do |user|
    FactoryBot.create_list(:blog, blogs_count, user:)
  end
end
