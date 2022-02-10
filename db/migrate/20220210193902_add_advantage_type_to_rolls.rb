class AddAdvantageTypeToRolls < ActiveRecord::Migration[5.2]
  def change
    add_column :rolls, :advantage_type, :integer
  end
end
