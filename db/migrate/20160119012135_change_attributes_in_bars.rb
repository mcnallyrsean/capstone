class ChangeAttributesInBars < ActiveRecord::Migration
  def change
    rename_column :bars, :latitude, :old_latitude
    rename_column :bars, :longitude, :old_longitude
  end
end
