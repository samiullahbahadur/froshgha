class RemovePriceFromCurrentPrice < ActiveRecord::Migration[7.0]
  def change
    remove_column :current_prices, :price, :integer
  end
end
