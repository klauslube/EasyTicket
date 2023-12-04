require 'rails_helper'

describe 'Visitors' do 
  context 'visit home page' do
    it 'Successfully' do
      visit '/'
      click_on 'Sobre Mim'
      expect(page).to have_content('Sobre Mim')
    end
  end
end