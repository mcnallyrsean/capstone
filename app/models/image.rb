class Image < ActiveRecord::Base
  belongs_to :bar
  belongs_to :team
  belongs_to :league
  belongs_to :sport
  belongs_to :user
end
