require 'rails_helper'

describe 'Visitors' do 
  context 'visit home page' do
    it 'Successfully' do
      visit '/'
      expect(page).to have_content('Olá')
    end
  end
end