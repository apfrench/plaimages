class RemoveDetailsFromPlaimage < ActiveRecord::Migration
  def change
    remove_column :plaimages, :latitude, :decimal
    remove_column :plaimages, :longitude, :decimal
  end
end
