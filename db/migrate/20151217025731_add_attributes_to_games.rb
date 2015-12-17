class AddAttributesToGames < ActiveRecord::Migration
  def change
    add_column :games, :date, :datetime
    add_column :games, :location, :string
    add_column :games, :team_1_id, :integer
    add_column :games, :team_2_id, :integer
    add_column :games, :check_in_id, :integer
    add_column :games, :sport_id, :integer
    add_column :games, :league_id, :integer
    add_column :games, :bar_id, :integer
  end
end
