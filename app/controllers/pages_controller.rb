class PagesController < ApplicationController
  def home
    @games = Game.where("date LIKE ?", "January 22, 2016")
  end
end
