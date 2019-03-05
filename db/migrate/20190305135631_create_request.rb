class CreateRequest < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.references :user
      t.references :meeting
      t.references :restaurant
      t.string :location
      t.integer :meal_time
      t.integer :price
      t.references :cuisine
      t.date :meeting_date

      t.timestamps
    end
  end
end
