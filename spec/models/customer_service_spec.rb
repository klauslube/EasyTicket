require 'rails_helper'

describe CustomerService do 
  context 'validations' do
    it { should validate_presence_of(:code) }
    it { should validate_presence_of(:service_type) }
    it { should validate_presence_of(:medical_service_type) }
    # TODO: it { should belong_to(:customer) }
    it do
      should define_enum_for(:service_type).
      with_values(default: 5, preferential: 10)
    end
    
    it do
      should define_enum_for(:medical_service_type).
      with_values(general: 5, specialist: 10)
    end
  end
end