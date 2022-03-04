require 'rails_helper'

RSpec.describe Coin, type: :model do
  it 'price is mandatory' do
    currency = Currency.create!(name: 'Ethereum', code: 'ETH')
    coin = Coin.new(currency: currency, quantity: 2 )

    result = coin.valid?

    expect(result).to eq false
  end

  it 'quantity is mandatory' do
    currency = Currency.create!(name: 'Ethereum', code: 'ETH')
    coin = Coin.new(currency: currency, price: 123.4 )

    result = coin.valid?

    expect(result).to eq false
  end
end
