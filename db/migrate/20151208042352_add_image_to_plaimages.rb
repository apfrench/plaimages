class AddImageToPlaimages < ActiveRecord::Migration
  def change
    add_column :plaimages, :image, :string
  end
end
