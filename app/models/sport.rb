class Sport < ActiveRecord::Base
  belongs_to :league
  belongs_to :team
  has_many :images
end
