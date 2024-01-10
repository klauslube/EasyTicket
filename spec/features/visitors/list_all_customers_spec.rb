require 'rails_helper'

describe 'List all customers' do
  Faker::Config.locale = 'pt-BR'
  before(:each) do
    create(:customer_service, :null_customer)
    create(:customer, name: 'Klaus')
    create(:customer, name: 'Xita')
  end
  context 'on Success' do
    it 'show all registered customers' do
      visit '/dashboard'
      click_on 'Todos os Visitantes'
      expect(page).to have_content('Klaus')
      expect(page).to have_content('Xita')
    end
  end
end
