require 'rails_helper'

describe 'Registering visitor' do
  Faker::Config.locale = 'pt-BR'
  before(:each) { create(:customer_service, :null_customer) }
  context 'on Success' do
    it 'has all correct parameters' do
      visit '/dashboard'
      click_on 'Registro de Visitante'
      fill_in 'Nome', with: Faker::Name.name
      fill_in 'Email', with: Faker::Internet.email
      fill_in 'Idade', with: (0..110).to_a.sample
      fill_in 'Cpf', with: Faker::CPF.numbers
      fill_in 'Endereço', with: Faker::Address.full_address
      fill_in 'Telefone', with: Faker::PhoneNumber.cell_phone
      fill_in 'Número do plano de saúde', with: Faker::Number.number(digits: 10)
      click_on 'Registrar'
      expect(page).to have_content('Cadastro Realizado com sucesso')
    end
  end

  context 'on Failure' do
    it 'has blank name' do
      visit '/dashboard'
      click_on 'Registro de Visitante'
      fill_in 'Email', with: Faker::Internet.email
      fill_in 'Idade', with: (0..110).to_a.sample
      fill_in 'Cpf', with: Faker::CPF.numbers
      fill_in 'Endereço', with: Faker::Address.full_address
      fill_in 'Telefone', with: Faker::PhoneNumber.cell_phone
      fill_in 'Número do plano de saúde', with: Faker::Number.number(digits: 10)
      click_on 'Registrar'
      expect(page).not_to have_content('Cadastro Realizado com sucesso')
      expect(page).to have_content("Name can't be blank")
    end

    it 'has blank age' do
      visit '/dashboard'
      click_on 'Registro de Visitante'
      fill_in 'Nome', with: Faker::Name.name
      fill_in 'Email', with: Faker::Internet.email
      fill_in 'Cpf', with: Faker::CPF.numbers
      fill_in 'Endereço', with: Faker::Address.full_address
      fill_in 'Telefone', with: Faker::PhoneNumber.cell_phone
      fill_in 'Número do plano de saúde', with: Faker::Number.number(digits: 10)
      click_on 'Registrar'
      expect(page).not_to have_content('Cadastro Realizado com sucesso')
      expect(page).to have_content("Age can't be blank")
    end

    it 'has blank email' do
      visit '/dashboard'
      click_on 'Registro de Visitante'
      fill_in 'Nome', with: Faker::Name.name
      fill_in 'Idade', with: (0..110).to_a.sample
      fill_in 'Cpf', with: Faker::CPF.numbers
      fill_in 'Endereço', with: Faker::Address.full_address
      fill_in 'Telefone', with: Faker::PhoneNumber.cell_phone
      fill_in 'Número do plano de saúde', with: Faker::Number.number(digits: 10)
      click_on 'Registrar'
      expect(page).not_to have_content('Cadastro Realizado com sucesso')
      expect(page).to have_content("Email can't be blank")
    end

    it 'has blank cpf' do
      visit '/dashboard'
      click_on 'Registro de Visitante'
      fill_in 'Nome', with: Faker::Name.name
      fill_in 'Email', with: Faker::Internet.email
      fill_in 'Idade', with: (0..110).to_a.sample
      fill_in 'Endereço', with: Faker::Address.full_address
      fill_in 'Telefone', with: Faker::PhoneNumber.cell_phone
      fill_in 'Número do plano de saúde', with: Faker::Number.number(digits: 10)
      click_on 'Registrar'
      expect(page).not_to have_content('Cadastro Realizado com sucesso')
      expect(page).to have_content("Cpf can't be blank")
    end

    it 'has blank telephone' do
      visit '/dashboard'
      click_on 'Registro de Visitante'
      fill_in 'Nome', with: Faker::Name.name
      fill_in 'Idade', with: (0..110).to_a.sample
      fill_in 'Email', with: Faker::Internet.email
      fill_in 'Cpf', with: Faker::CPF.numbers
      fill_in 'Endereço', with: Faker::Address.full_address
      fill_in 'Número do plano de saúde', with: Faker::Number.number(digits: 10)
      click_on 'Registrar'
      expect(page).not_to have_content('Cadastro Realizado com sucesso')
      expect(page).to have_content("Telephone can't be blank")
    end

    it 'has blank address' do
      visit '/dashboard'
      click_on 'Registro de Visitante'
      fill_in 'Nome', with: Faker::Name.name
      fill_in 'Idade', with: (0..110).to_a.sample
      fill_in 'Email', with: Faker::Internet.email
      fill_in 'Cpf', with: Faker::CPF.numbers
      fill_in 'Telefone', with: Faker::PhoneNumber.cell_phone
      fill_in 'Número do plano de saúde', with: Faker::Number.number(digits: 10)
      click_on 'Registrar'
      expect(page).not_to have_content('Cadastro Realizado com sucesso')
      expect(page).to have_content("Address can't be blank")
    end

    it 'has blank health care number' do
      visit '/dashboard'
      click_on 'Registro de Visitante'
      fill_in 'Nome', with: Faker::Name.name
      fill_in 'Idade', with: (0..110).to_a.sample
      fill_in 'Email', with: Faker::Internet.email
      fill_in 'Cpf', with: Faker::CPF.numbers
      fill_in 'Endereço', with: Faker::Address.full_address
      fill_in 'Telefone', with: Faker::PhoneNumber.cell_phone
      click_on 'Registrar'
      expect(page).not_to have_content('Cadastro Realizado com sucesso')
      expect(page).to have_content("Health care number can't be blank")
    end
  end
end
