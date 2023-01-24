class AddPriceToCurrentPrice < ActiveRecord::Migration[7.0]
  def change
    add_column :current_prices, :price, :float
  end
end
