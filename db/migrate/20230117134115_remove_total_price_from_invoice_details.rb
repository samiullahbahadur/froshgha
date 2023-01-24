class RemoveTotalPriceFromInvoiceDetails < ActiveRecord::Migration[7.0]
  def change
    remove_column :invoice_details, :total_price, :integer
  end
end
