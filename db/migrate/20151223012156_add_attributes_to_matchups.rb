class AddAttributesToMatchups < ActiveRecord::Migration
  def change
    add_column :matchups, :game_id, :integer
    add_column :matchups, :team_1_id, :integer
    add_column :matchups, :team_2_id, :integer
  end
end
