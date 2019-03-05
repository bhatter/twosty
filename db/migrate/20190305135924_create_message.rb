class CreateMessage < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :user
      t.references :meeting

      t.timestamps
    end
  end
end
