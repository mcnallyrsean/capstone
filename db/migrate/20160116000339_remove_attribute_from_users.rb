class RemoveAttributeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :team_id, :integer
    remove_column :users, :bar_id, :integer
    remove_column :users, :check_in_id, :integer
    remove_column :users, :facebook_url, :string
    remove_column :users, :twitter_handle, :string
    remove_column :users, :default_latitude, :string
    remove_column :users, :default_longitude, :string
    remove_column :users, :current_latitude, :string
    remove_column :users, :current_longitude, :string
    remove_column :users, :image_id, :integer
  end
end
