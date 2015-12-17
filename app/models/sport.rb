class Sport < ActiveRecord::Base
  has_many :leagues
  has_many :teams
  has_many :games
  has_many :images
end
