class AddImagesToGame < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :images, :string
  end
end
