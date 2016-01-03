class Game < ActiveRecord::Base
  has_many :teams, through: :matchups
  belongs_to :sport#, class_name: "Sport", foreign_key: "sport_id"
  belongs_to :team_1, class_name: "Team", foreign_key: "team_1_id"
  belongs_to :team_2, class_name: "Team", foreign_key: "team_2_id" 
  belongs_to :league
  belongs_to :bar
  has_many :images
  has_many :check_ins
end
