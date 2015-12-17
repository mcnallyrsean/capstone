class Team < ActiveRecord::Base
  has_one :league
  has_one :sport, through: :league
  has_many :games
  has_many :images
end
