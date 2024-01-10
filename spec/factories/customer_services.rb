FactoryBot.define do
  factory :customer_service do
    opts = {
      service_type: { default: 5 },
      medical_service_type: { general: 5 }
    }
    code { SecureRandom.uuid }
    service_type { 5 } # opts[:service_type][:default] }
    medical_service_type { 5 } # opts[:medical_service_type][:general] }

    association :customer, factory: :customer

    trait :null_customer do
      customer_id { nil }
    end
  end
end
