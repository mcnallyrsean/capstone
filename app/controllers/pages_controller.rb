class PagesController < ApplicationController
  def home
    @games = Game.where("date LIKE ?", "January 21, 2016")
  end
end
