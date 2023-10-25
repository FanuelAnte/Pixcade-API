class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.float :price, null: false
      t.integer :discount, null: false
      t.date :release_date, null: false
      t.string :status, null: false
      t.string :genre, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :games, :title, unique: true
  end
end
