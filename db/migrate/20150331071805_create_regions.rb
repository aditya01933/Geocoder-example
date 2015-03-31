class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :country
      t.string :state
      t.string :city
      t.string :zipcode
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
