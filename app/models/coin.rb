class Coin < ApplicationRecord
  belongs_to :currency
  validates :price, :quantity, presence: true

  def total
    self.quantity * self.price
  end
end
