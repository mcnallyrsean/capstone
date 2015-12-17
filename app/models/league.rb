class League < ActiveRecord::Base
  belongs_to :sport
  has_many :games
  has_many  :images
end
