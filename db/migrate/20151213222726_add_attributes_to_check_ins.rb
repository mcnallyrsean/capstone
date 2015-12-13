class AddAttributesToCheckIns < ActiveRecord::Migration
  def change
    add_column :check_ins, :user_id, :integer
    add_column :check_ins, :bar_id, :integer
    add_column :check_ins, :team_id, :integer
    add_column :check_ins, :game_id, :integer
    add_column :check_ins, :league_id, :integer
    add_column :check_ins, :sport_id, :integer
    add_column :check_ins, :comments, :string
  end
end
