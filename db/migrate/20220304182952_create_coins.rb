class CreateCoins < ActiveRecord::Migration[6.1]
  def change
    create_table :coins do |t|
      t.float :quantity
      t.float :price
      t.references :currency, null: false, foreign_key: true

      t.timestamps
    end
  end
end
