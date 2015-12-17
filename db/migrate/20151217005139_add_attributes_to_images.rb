class AddAttributesToImages < ActiveRecord::Migration
  def change
    add_column :images, :url, :string
    add_column :images, :user_id, :integer
    add_column :images, :bar_id, :integer
    add_column :images, :game_id, :integer
    add_column :images, :team_id, :integer
    add_column :images, :league_id, :integer
    add_column :images, :sport_id, :integer
  end
end
