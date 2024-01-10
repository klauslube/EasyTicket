class CustomerService < ApplicationRecord
  belongs_to :customer, optional: true
  validates :code, :service_type, :medical_service_type, presence: true

  enum service_type: { default: 5, preferential: 10 }
  enum medical_service_type: { general: 5, specialist: 10 }

  def generate_code
    self.code = SecureRandom.uuid
  end
end
