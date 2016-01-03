class CreateTeamCheckIns < ActiveRecord::Migration
  def change
    create_table :team_check_ins do |t|
      t.integer :team_id
      t.integer :check_in_id

      t.timestamps null: false
    end
  end
end
