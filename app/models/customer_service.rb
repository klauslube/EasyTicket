class CustomerService < ApplicationRecord
  validates :code, :type, :medical_service_type, presence: true

  enum type: {default: 5, preferential: 10}
  enum medical_service_type: {general: 5, specialist: 10}
end
