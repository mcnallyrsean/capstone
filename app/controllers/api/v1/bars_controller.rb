class Api::V1::BarsController < ApplicationController

  def index
    @bars = Bar.all.order("name ASC")
  end

end
