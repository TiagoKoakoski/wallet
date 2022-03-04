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
    expect(page).to have_content('Ativo cadastrado com sucesso')
  end

  it 'but code is mandatory' do
    visit root_path
    click_on 'Cadastrar novo ativo'
    fill_in 'Nome', with: 'Ethereum'
    click_on 'Salvar'

    expect(page).not_to have_content('Ativo cadastrado com sucesso')
    expect(page).to have_content('Não foi possivel salvar o ativo')
  end
  
end
