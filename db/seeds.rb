# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cuisine1 = Cuisine.create!(name: "italian")
Restaurant.create!(name: "Blabla", address: "Ilsenburger Straße 40, 10589 Berlin", cuisine_id: cuisine1.id)





url1 ="https://images.unsplash.com/photo-1544098485-2a2ed6da40ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
johny = User.new(email: "johny@gmail.com", first_name: "Johny", gender: "male", last_name: "Doe", date_of_birth: "1980-08-08", gender_preference: "man", age_preference_from: 18  , age_preference_to: 90, password: 123456)
johny.remote_photo_url = url1
johny.save!


url2 ="https://images.unsplash.com/photo-1548532928-b34e3be62fc6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=867&q=80"
marcus = User.new(email: "marcus@gmail.com", first_name: "Marcus", gender: "male", last_name: "Williams", date_of_birth: "1980-08-08", gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
marcus.remote_photo_url = url2
marcus.save!

url3 ="https://images.unsplash.com/photo-1542345812-d98b5cd6cf98?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
tim = User.new(email: "tim@gmail.com", first_name: "Tim", last_name: "Becker", gender: "male", date_of_birth: "1985-12-08", gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
tim.remote_photo_url = url3
tim.save!

url4 ="https://images.unsplash.com/photo-1543229912-d69e86dc1dc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
stephan = User.new(email: "stephan@gmail.com", first_name: "Stephan", last_name: "Meyer", gender: "male", date_of_birth: "1983-12-12", gender_preference: "man", age_preference_from: 18  , age_preference_to: 90, password: 123456)
stephan.remote_photo_url = url4
stephan.save!

url5 ="https://images.unsplash.com/photo-1501325087108-ae3ee3fad52f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
jan = User.new(email: "jan@gmail.com", first_name: "Jan", last_name: "Lehmann", gender: "male", date_of_birth: "1998-12-12", gender_preference: "man", age_preference_from: 18  , age_preference_to: 90, password: 123456)
jan.remote_photo_url = url5
jan.save!

url6 ="https://images.unsplash.com/photo-1546456073-ea246a7bd25f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
jason = User.new(email: "jason@gmail.com", first_name: "Jason", last_name: "Dicaprio", gender: "male", date_of_birth: "1995-04-08", gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
jason.remote_photo_url = url6
jason.save!

url7 ="https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"
marc = User.new(email: "marc@gmail.com", first_name: "Marc", last_name: "Astley", gender: "male", date_of_birth: "1978-03-05", gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
marc.remote_photo_url = url7
marc.save!

url8 ="https://images.unsplash.com/photo-1541919931-3baf88859dda?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80"
oliver = User.new(email: "oliver@gmail.com", first_name: "Oliver", last_name: "Dalton", gender: "male", date_of_birth: "1968-04-12", gender_preference: "man", age_preference_from: 18  , age_preference_to: 90, password: 123456)
oliver.remote_photo_url = url8
oliver.save!

url9 ="https://images.unsplash.com/photo-1539598492601-581aa9675a30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
harry = User.new(email: "harry@gmail.com", first_name: "Harry", last_name: "Kinsley", gender: "male", date_of_birth: "1983-12-01", gender_preference: "man", age_preference_from: 18  , age_preference_to: 90, password: 123456)
harry.remote_photo_url = url9
harry.save!

url10 ="https://images.unsplash.com/photo-1551617405-f1fc4bcd9f25?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=662&q=80"
charlie = User.new(email: "charlie@gmail.com", first_name: "Charlie", last_name: "Mitchell", gender: "male", date_of_birth: "1998-12-31", gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
charlie.remote_photo_url = url10
charlie.save!

url11 ="https://images.unsplash.com/photo-1542488458-658077c76191?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
sandra = User.new(email: "sandra@gmail.com", first_name: "Sandra", gender: "female", last_name: "Dudley", date_of_birth: "1988-08-09", gender_preference: "man", age_preference_from: 18  , age_preference_to: 90, password: 123456)
sandra.remote_photo_url = url11
sandra.save!


url12 ="https://images.unsplash.com/photo-1542662482-65e2129ea2bc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80"
laura = User.new(email: "laura@gmail.com", first_name: "Laura", gender: "female", last_name: "Fawcett", date_of_birth: "1992-02-15", gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
laura.remote_photo_url = url2
laura.save!

url13 ="https://images.unsplash.com/photo-1546539782-6fc531453083?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
stacey = User.new(email: "stacey@gmail.com", first_name: "Stacey", last_name: "Adams", gender: "female", date_of_birth: "1985-06-08", gender_preference: "man", age_preference_from: 18  , age_preference_to: 90, password: 123456)
stacey.remote_photo_url = url13
stacey.save!

url14 ="https://images.unsplash.com/photo-1551711590-3adab09ddb89?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
mona = User.new(email: "mona@gmail.com", first_name: "Mona", last_name: "Meyer", gender: "female", date_of_birth: "1996-12-22", gender_preference: "man", age_preference_from: 18  , age_preference_to: 90, password: 123456)
mona.remote_photo_url = url14
mona.save!

url15 ="https://images.unsplash.com/photo-1548534535-e73f994ce895?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
tiffany = User.new(email: "tiffany@gmail.com", first_name: "Tiffany", last_name: "Johnson", gender: "female", date_of_birth: "1998-10-12", gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
tiffany.remote_photo_url = url15
tiffany.save!

url16 ="https://images.unsplash.com/photo-1549351512-c5e12b11e283?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80"
nina = User.new(email: "nina@gmail.com", first_name: "Nina", last_name: "Miller", gender: "female", date_of_birth: "1984-04-08", gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
nina.remote_photo_url = url16
nina.save!

url17 ="https://images.unsplash.com/photo-1542148240-878bb3c8b325?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
sakura = User.new(email: "sakura@gmail.com", first_name: "Sakura", last_name: "Shimizu", gender: "female", date_of_birth: "1987-03-05", gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
sakura.remote_photo_url = url17
sakura.save!

url18 ="https://images.unsplash.com/photo-1501625277806-e25bd4596da3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80"
jenny = User.new(email: "jenny@gmail.com", first_name: "Jenny", last_name: "Lincoln", gender: "female", date_of_birth: "1973-05-28", gender_preference: "man", age_preference_from: 18  , age_preference_to: 90, password: 123456)
jenny.remote_photo_url = url18
jenny.save!

url19 ="https://images.unsplash.com/photo-1486116736668-6384736c9330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
lisa = User.new(email: "lisa@gmail.com", first_name: "Lisa", last_name: "Bonet", gender: "female", date_of_birth: "1989-08-12", gender_preference: "man", age_preference_from: 18  , age_preference_to: 90, password: 123456)
lisa.remote_photo_url = url19
lisa.save!

url20 ="https://images.unsplash.com/photo-1513732822839-24f03a92f633?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
andrea = User.new(email: "andrea@gmail.com", first_name: "Andrea", last_name: "Stevenson", gender: "female", date_of_birth: "1965-05-25" , gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
andrea.remote_photo_url = url20
andrea.save!
