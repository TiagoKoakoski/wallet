class Currency < ApplicationRecord
  has_many :coins
  validates :name, :code, presence: true

  def quantity_total
    quantity_total = 0
    self.coins.each do |c|
      quantty_total = quantity_total + c.quantity
    end
    return quantity_total  
  end

end
