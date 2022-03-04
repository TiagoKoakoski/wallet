require 'rails_helper'

describe 'Create a currency' do
  it 'successfully' do
    visit root_path
    click_on 'Cadastrar novo ativo'
    fill_in 'Nome', with: 'Ethereum'
    fill_in 'Código do ativo', with: 'ETH'
    click_on 'Salvar'

    expect(page).to have_css('h2',text: 'Ethereum')
    expect(page).to have_css('h2',text: 'ETH')
  end
end
