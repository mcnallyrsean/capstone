class League < ActiveRecord::Base
  has_many :games
  has_many  :images
  belongs_to :sport
  has_many :check_ins
  # has_many :league_teams
  # has_many :teams, through: :league_teams
end
