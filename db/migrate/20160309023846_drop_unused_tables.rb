class DropUnusedTables < ActiveRecord::Migration
  def change
    drop_table :league_teams
    drop_table :matchups
  end
end
