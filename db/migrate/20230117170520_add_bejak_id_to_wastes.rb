class AddBejakIdToWastes < ActiveRecord::Migration[7.0]
  def change
    add_reference :wastes, :bejak, foreign_key: true
  end
end
