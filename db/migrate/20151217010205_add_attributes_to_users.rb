class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :team_id, :integer
    add_column :users, :bar_id, :integer
    add_column :users, :check_in_id, :integer
    add_column :users, :image_id, :integer
    add_column :users, :facebook_url, :string
    add_column :users, :twitter_handle, :string
    add_column :users, :default_latitude, :string
    add_column :users, :default_longitude, :string
    add_column :users, :current_latitude, :string
    add_column :users, :current_longitude, :string
    add_column :users, :bar_owner, :boolean, default: false
    add_column :users, :admin, :boolean, default: false
  end
end
