class CreateColorEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :color_entries do |t|
      t.references :user, null: false, foreign_key: true
      t.string :color
      t.text :memo
      t.date :date

      t.timestamps
    end
  end
end
