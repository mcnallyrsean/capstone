class AddNameToBars < ActiveRecord::Migration
  def change
    add_column :bars, :name, :string
  end
end
