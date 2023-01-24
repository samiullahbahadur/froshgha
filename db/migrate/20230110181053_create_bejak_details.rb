class CreateBejakDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :bejak_details do |t|
      t.references :product,  foreign_key: true
      t.references :bejak,  foreign_key: true
      t.text :details
      t.string :unit
      t.integer :quantity
      t.float :unit_price

      t.timestamps
    end
  end
end
