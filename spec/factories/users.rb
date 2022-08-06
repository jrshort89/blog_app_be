FactoryBot.define do
  factory :user do
    first_name { "John" }
    last_name  { "Doe" }
    email { "test@test.com" }
    password { "password" }
  end
end

def user_with_blogs(blogs_count: 5)
  FactoryBot.create(:user) do |user|
    FactoryBot.create_list(:blog, blogs_count, user: user)
  end
end