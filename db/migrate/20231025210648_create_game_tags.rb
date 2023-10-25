class CreateGameTags < ActiveRecord::Migration[7.1]
  def change
    create_table :game_tags do |t|
      t.references :game, null: false, foreign_key: true
      t.string :tag, null: false

      t.timestamps
    end
  end
end
