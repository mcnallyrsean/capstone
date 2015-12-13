class AddAttributesToSports < ActiveRecord::Migration
  def change
    add_column :sports, :name, :string
    add_column :sports, :league_id, :integer
    add_column :sports, :team_id, :integer
    add_column :sports, :game_id, :integer
  end
end
