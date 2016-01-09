class Team < ActiveRecord::Base
  belongs_to :league
  has_one :sport, through: :league
  has_many :games, through: :matchups
  has_many :images#, class_name: "Image", foreign_key: "team_id"
  has_many :users, through: :user_teams
  has_many :team_check_ins
  has_many :check_ins, through: :team_check_ins
  # has_many :league_teams
  # has_many :leagues, through: :league_teams
end
