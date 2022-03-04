require 'rails_helper'

  describe 'User register a coin balance' do
    it 'successfully' do
      # Arrange
      Currency.create!(name: 'Ethereum', code: 'ETH')

      # Act
      visit new_coin_path

      select 'ETH', from: 'Ativo'
      fill_in 'Quantidade', with: '2'
      fill_in 'Preço', with: '2684.80'
      click_on 'Salvar'
      
      # Assert
      expect(page).to have_content('$ 5369.6')
    end
  end
