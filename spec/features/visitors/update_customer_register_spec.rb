require 'rails_helper'

describe 'Update visitor' do
  Faker::Config.locale = 'pt-BR'
  before(:each) do
    create(:customer_service, :null_customer)
  end
  context 'on success' do
    let!(:customer) { create(:customer, **attributes_for(:customer))}
    it 'updates a visitor with correct parameters' do
      visit dashboard_path
      click_on 'Todos os Visitantes'
      click_on 'Editar', match: :first
      fill_in 'Nome', with: attributes_for(:customer)[:name]
      fill_in 'Email', with: attributes_for(:customer)[:email]
      fill_in 'Idade', with: attributes_for(:customer)[:age]
      fill_in 'Cpf', with: attributes_for(:customer)[:cpf]
      fill_in 'Endereço', with: attributes_for(:customer)[:address]
      fill_in 'Telefone', with: attributes_for(:customer)[:telephone]
      fill_in 'Número do plano de saúde', with: attributes_for(:customer)[:health_care_number]

      click_on 'Atualizar'

      expect(page).to have_content('Cadastro Atualizado com sucesso')
    end

  end
  context 'on failure' do
    let!(:customer) { create(:customer, **attributes_for(:customer)) }

    it 'fails to update a visitor with incorrect parameters' do
      visit dashboard_path
      click_on 'Todos os Visitantes'
      click_on 'Editar', match: :first
      fill_in 'Nome', with: ''

      click_on 'Atualizar'

      expect(page).to have_content("Name can't be blank")
    end
  end
end