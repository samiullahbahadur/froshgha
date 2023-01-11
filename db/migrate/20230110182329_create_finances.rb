class CreateFinances < ActiveRecord::Migration[7.0]
  def change
    create_table :finances do |t|
      t.references :customer, foreign_key: true
      t.references :invoice, foreign_key: true
      t.bigint :amount_paid
      t.date :date

      t.timestamps
    end
  end
end
