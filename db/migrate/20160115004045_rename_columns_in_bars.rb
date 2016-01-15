class RenameColumnsInBars < ActiveRecord::Migration
  def change
    rename_column :bars, :vicinity, :address
    rename_column :bars, :lat, :latitude
    rename_column :bars, :lng, :longitude
  end
end
