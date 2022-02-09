class RemoveTotalFromRolls < ActiveRecord::Migration[5.2]
  def change
    remove_column :rolls, :total, :integer
  end
end
