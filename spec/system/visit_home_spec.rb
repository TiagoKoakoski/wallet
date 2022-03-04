require 'rails_helper'

describe 'Guest visit home' do
  it 'sucessifuly' do
    visit root_path
    
    expect(page).to have_content('Bem vindo a sua carteira digital')
  end
end
