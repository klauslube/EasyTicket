class Customer < ApplicationRecord
  has_many :customer_services, dependent: :destroy
  validates :name, :email, :age, :cpf, :address, :health_care_number, :telephone, presence: true
end
