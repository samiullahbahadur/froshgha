class RemoveTotalPriceFromBejakDetails < ActiveRecord::Migration[7.0]
  def change
    remove_column :bejak_details, :total_price, :integer
    
  end
end
