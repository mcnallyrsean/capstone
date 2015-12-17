class Team < ActiveRecord::Base
  has_one :league
  has_one :sport
  has_many :games
  has_many :images
end
