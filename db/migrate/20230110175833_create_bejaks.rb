class CreateBejaks < ActiveRecord::Migration[7.0]
  def change
    create_table :bejaks do |t|
      t.text :details
      t.date :date

      t.timestamps
    end
  end
end
