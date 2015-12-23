class AddTeamIdsToCheckIns < ActiveRecord::Migration
  def change
    remove_column :check_ins, :team_id, :integer
    add_column :check_ins, :team_1_id, :integer
    add_column :check_ins, :team_2_id, :integer
  end
end
