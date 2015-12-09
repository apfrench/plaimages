class AddDetailsToPlaimage < ActiveRecord::Migration
  def change
    add_column :plaimages, :latitude, :float
    add_column :plaimages, :longitude, :float
  end
end
