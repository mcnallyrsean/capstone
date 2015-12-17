class League < ActiveRecord::Base
  belongs_to :team
  has_many :games
  has_many  :images
  has_one :sport
end
