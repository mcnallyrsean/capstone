class CheckIn < ActiveRecord::Base
  belongs_to :user
  belongs_to :bar
  belongs_to :game
  belongs_to :team
  belongs_to :league
  belongs_to :sport
end
