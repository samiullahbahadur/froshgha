class CreateWastes < ActiveRecord::Migration[7.0]
  def change
    create_table :wastes do |t|
      t.references :product, foreign_key: true
      t.string :details
      t.string :unit
      t.integer :quantity
      t.float :unit_price
      t.bigint :total_price

      t.timestamps
    end
  end
end
