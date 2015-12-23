class Team < ActiveRecord::Base
  belongs_to :league
  has_one :sport, through: :league
  has_many :games, through: :matchups
  has_many :images
end
