class Game < ActiveRecord::Base
  has_many :teams
  belongs_to :team
  belongs_to :sport
  belongs_to :league
  belongs_to :bar
  has_many :images
end
