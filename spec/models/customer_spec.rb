require 'rails_helper'

describe Customer do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:age) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:cpf) }
    it { should validate_presence_of(:health_care_number) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:telephone) }
  end
end
