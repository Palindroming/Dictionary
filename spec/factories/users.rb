FactoryBot.define do
  factory :user do
    name { "Test User" }
    sequence(:email) { |n| "user#{n}@example.com" }
    password { "pass123" }
    password_confirmation { "pass123" }
  end
end
