class AddDefaultValueToDicesIsAdvantageAttribute < ActiveRecord::Migration[5.2]
  def up
    change_column :dices, :is_advantage, :boolean, default: false
  end

  def down
    change_column :dices, :is_advantage, :boolean, default: nil
  end
end
