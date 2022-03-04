class Coin < ApplicationRecord
  belongs_to :currency

  def total
    self.quantity * self.price
  end
end
