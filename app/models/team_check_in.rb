class TeamCheckIn < ActiveRecord::Base
  belongs_to :check_in
  belongs_to :team, class_name: "Team", foreign_key: "team_id"
end