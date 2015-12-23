class CheckIn < ActiveRecord::Base
  belongs_to :user
  belongs_to :bar
  belongs_to :game
  belongs_to :team1, class_name: "Team", foreign_key: "team_1_id"
  belongs_to :team2, class_name: "Team", foreign_key: "team_2_id"
  belongs_to :league
  belongs_to :sport
end
