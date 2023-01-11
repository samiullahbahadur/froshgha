class CreateExpenditures < ActiveRecord::Migration[7.0]
  def change
    create_table :expenditures do |t|
      t.text :description
      t.integer :amount
      t.date :date

      t.timestamps
    end
  end
end
