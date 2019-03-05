class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :gender_preference, :integer
    add_column :users, :age_preference_from, :integer
    add_column :users, :age_preference_to, :integer
    add_column :users, :photo, :string
  end
end
