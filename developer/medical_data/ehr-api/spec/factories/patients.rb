FactoryBot.define do
  factory :patient do
    first_name { Faker::Lorem.word }
    last_name { Faker::Lorem.word }
    dob { Faker::Number.number(8) }
  end
end
