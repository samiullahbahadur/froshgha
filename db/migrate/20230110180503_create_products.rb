class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :category, foreign_key: true
       t.string   :product_details
      t.timestamps
    end
  end
end
