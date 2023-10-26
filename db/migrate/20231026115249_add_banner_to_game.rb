class AddBannerToGame < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :banner, :string
  end
end
