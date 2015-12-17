class RemoveAttributesFromSports < ActiveRecord::Migration
  def change
    remove_column :sports, :league_id, :integer
    remove_column :sports, :team_id, :integer
    remove_column :sports, :game_id, :integer
  end
end
