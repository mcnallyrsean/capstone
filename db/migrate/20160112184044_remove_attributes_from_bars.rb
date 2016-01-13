class RemoveAttributesFromBars < ActiveRecord::Migration
  def change
    remove_column :bars, :location, :string
    remove_column :bars, :description, :string
    remove_column :bars, :hours_of_operation, :string
    remove_column :bars, :status, :string
    remove_column :bars, :promo, :string
    remove_column :bars, :facebook_url, :string
    remove_column :bars, :twitter_handle, :string
    remove_column :bars, :number_of_check_ins, :integer
    remove_column :bars, :game_id_check_in, :integer
    remove_column :bars, :team_id_check_in, :integer
    remove_column :bars, :league_id_check_in, :integer
    remove_column :bars, :sport_id_check_in, :integer
    remove_column :bars, :number_of_tvs, :integer
    remove_column :bars, :tv_quality, :integer
    remove_column :bars, :experience_rating, :integer
    remove_column :bars, :user_id, :integer
  end
end
