class AddDateAndTimeToGames < ActiveRecord::Migration
  def change 
    change_column :games, :date, :string
    add_column :games, :time, :string
  end
end
