class CreateInvoiceDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :invoice_details do |t|
      t.references :product,  foreign_key: true
      t.references :invoice,  foreign_key: true
      t.string :unit
      t.integer :quantity
      t.float :unit_price
      t.integer :discount
      t.bigint :total_price

      t.timestamps
    end
  end
end
