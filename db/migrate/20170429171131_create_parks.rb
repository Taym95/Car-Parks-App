class CreateParks < ActiveRecord::Migration[5.0]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :address
      t.string :slug
      t.string :city
      t.boolean :available
      t.boolean :has_camera
      t.boolean :has_watchman
      t.integer :zip_code
      t.integer :district
      t.integer :price_month
      t.string :main_picture
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
