class Sport < ActiveRecord::Base
  has_many :leagues
  belongs_to :team
  has_many :images
end
