class CreatePlaimages < ActiveRecord::Migration
  def change
    create_table :plaimages do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.string :description
      t.text :comment

      t.timestamps null: false
    end
  end
end
