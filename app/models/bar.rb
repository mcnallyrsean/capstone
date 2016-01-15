class Bar < ActiveRecord::Base
  has_many :games
  has_many :check_ins
  has_many :teams
  has_many :sports
  has_many :leagues
  has_many :images
  has_many :users

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
