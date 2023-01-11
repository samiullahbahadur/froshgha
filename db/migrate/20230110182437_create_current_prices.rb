class CreateCurrentPrices < ActiveRecord::Migration[7.0]
  def change
    create_table :current_prices do |t|
      t.references :product,  foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
