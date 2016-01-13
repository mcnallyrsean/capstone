class AddAttributesToBars < ActiveRecord::Migration
  def change
    add_column :bars, :place_id, :string
    add_column :bars, :vicinity, :string
    add_column :bars, :formatted_address, :string
    add_column :bars, :formatted_phone_number, :string
    add_column :bars, :lat, :string
    add_column :bars, :lng, :string
    add_column :bars, :icon, :string
    add_column :bars, :rating, :float
    add_column :bars, :types, :string
    add_column :bars, :url, :string
  end
end
