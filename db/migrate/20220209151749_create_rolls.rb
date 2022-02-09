class CreateRolls < ActiveRecord::Migration[5.2]
  def change
    create_table :rolls do |t|
      t.integer :total, null: false

      t.timestamps
    end
  end
end
