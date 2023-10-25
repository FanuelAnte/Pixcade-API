class CreateGamePlatforms < ActiveRecord::Migration[7.1]
  def change
    create_table :game_platforms do |t|
      t.references :game, null: false, foreign_key: true
      t.string :platform, null: false

      t.timestamps
    end
  end
end
