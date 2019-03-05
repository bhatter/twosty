class Restaurant < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.float :rating
      t.time :open_time
      t.string :close_time
      t.references :cuisine

      t.timestamps
    end
  end
end
