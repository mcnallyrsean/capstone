class Game < ActiveRecord::Base
  has_many :teams, through: :matchups
  belongs_to :sport
  belongs_to :league
  belongs_to :bar
  has_many :images
end
