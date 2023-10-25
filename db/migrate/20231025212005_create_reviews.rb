class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.text :review_text, null: false
      t.date :review_date, null: false

      t.timestamps
    end
  end
end
