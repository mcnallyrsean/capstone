class Team < ActiveRecord::Base
  belongs_to :league
  has_one :sport, through: :league
  has_many :games, through: :matchups
  has_many :images#, class_name: "Image", foreign_key: "team_id"
end
