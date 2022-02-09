class CreateDices < ActiveRecord::Migration[5.2]
  def change
    create_table :dices do |t|
      t.integer :value, null: false
      t.string :kind, null: false
      t.references :roll, foreign_key: true

      t.timestamps
    end
  end
end
