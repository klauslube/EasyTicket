require 'rails_helper'

describe 'Visitors' do 
  context 'Initiate customer service' do
    it 'Successfully' do
      visit '/'
      click_on 'Iniciar Atendimento'
      expect(page.body).to include('Atendimento Preferencial')
      expect(page.body).to include('Atendimento Padrão')
    end
    it 'Create customer service successfully' do
      visit '/'
      click_on 'Iniciar Atendimento'
      click_on 'Atendimento Padrão'
      click_on 'Clínico Geral'
      expect(page.body).to include('Sua senha é: ')
    end
  end
end