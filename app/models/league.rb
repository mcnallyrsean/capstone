class League < ActiveRecord::Base
  belongs_to :team
  has_many :games
  has_many  :images
  belongs_to :sport
  has_many :check_ins
end
