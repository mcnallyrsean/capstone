class AddAttributestoBars < ActiveRecord::Migration
  def change
    add_column :bars, :location, :string
    add_column :bars, :description, :string
    add_column :bars, :hours_of_operation, :string
    add_column :bars, :status, :string
    add_column :bars, :promo, :string 
    add_column :bars, :facebook_url, :string
    add_column :bars, :twitter_handle, :string
    add_column :bars, :number_of_check_ins, :integer
    add_column :bars, :game_id_check_in, :integer
    add_column :bars, :team_id_check_in, :integer
    add_column :bars, :league_id_check_in, :integer
    add_column :bars, :sport_id_check_in, :integer
    add_column :bars, :number_of_tvs, :integer
    add_column :bars, :tv_quality, :integer
    add_column :bars, :experience_rating, :integer
    add_column :bars, :user_id, :integer
  end
end
