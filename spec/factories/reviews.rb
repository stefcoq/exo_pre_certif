FactoryBot.define do
  factory :review do
    description { Faker::Lorem.paragraph }
    rating { rand(1..5) }
    association :adoption
    association :user
  end
end
