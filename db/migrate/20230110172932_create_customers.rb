class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
