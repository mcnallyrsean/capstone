class AddAttributesToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :name, :string
    add_column :teams, :league_id, :integer
    add_column :teams, :sport_id, :integer
    add_column :teams, :game_id, :integer
  end
end
