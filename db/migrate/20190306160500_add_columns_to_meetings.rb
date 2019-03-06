class AddColumnsToMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.references :chooser_request, foreign_key: { to_table: :requests }
      t.references :chosen_request, foreign_key: { to_table: :requests }

      t.timestamps
    end
  end
end
