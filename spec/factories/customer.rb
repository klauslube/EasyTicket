FactoryBot.define do
  factory :customer do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    age { (0..110).to_a.sample }
    cpf { Faker::CPF.numbers }
    address { Faker::Address.full_address }
    telephone { Faker::PhoneNumber.cell_phone }
    health_care_number { 123 } # Faker::Number.number(digits: 1) }
  end

  trait :customer
end
