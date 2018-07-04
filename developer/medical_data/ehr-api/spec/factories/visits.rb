FactoryBot.define do
  factory :visit do
    date { Faker::Number.number(8) }
    height { Faker::Number.number(2) }
    weight { Faker::Number.number(3) }
    patient_id nil
  end
end
