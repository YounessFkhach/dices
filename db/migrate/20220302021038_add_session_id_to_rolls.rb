class AddSessionIdToRolls < ActiveRecord::Migration[5.2]
  def change
    add_column :rolls, :session_id, :uuid
  end
end
