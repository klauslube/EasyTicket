require 'rails_helper'

describe 'Visitors' do 
  context 'Initiate customer service' do
    it 'Successfully' do
      visit '/'
      click_on 'Iniciar Atendimento'
      expect(page).to have_content 'Atedimento Preferencial'
      expect(page).to have_content 'Atedimento Padrão'
    end
    it 'Create customer service successfully' do
      visit '/customer_services'
      click_on 'Atendimento Padrão'
      click_on 'Clínico Geral'
      expect(page).to have_content 'Sua senha é: '
    end
  end
end