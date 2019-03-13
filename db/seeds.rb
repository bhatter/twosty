# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Cuisine.destroy_all
Restaurant.destroy_all

puts "succesfully destroyed records"


cuisine_italian = Cuisine.create!(name: "italian")
cuisine_indian = Cuisine.create!(name: "indian")
cuisine_japanese = Cuisine.create!(name: "japanese")
cuisine_french = Cuisine.create!(name: "french")
cuisine_german = Cuisine.create!(name: "german")
cuisine_mexican = Cuisine.create!(name: "mexican")


urlr1 = "https://images.unsplash.com/photo-1549400405-810ac18d73b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=375&q=80"
piccola = Restaurant.new(name: "La Piccola", address: "Ritterstraße 60B, 10969 Berlin", cuisine_id: cuisine_italian.id)
piccola.remote_photo_url = urlr1
piccola.save!

urlr2 = "https://images.unsplash.com/photo-1543807669-0d0730e95cb3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
vapiano = Restaurant.new(name: "Vapiano", address: "Friedrichstraße 50-55, 10117 Berlin", cuisine_id: cuisine_italian.id)
vapiano.remote_photo_url = urlr2
vapiano.save!


urlr3 = "http://www.arbanashkihan.com/wp-content/uploads/2018/05/small-FUJ29895-1.jpg"
calibocca = Restaurant.new(name: "CaliBocca", address: "Schlüterstraße 30, 10629 Berlin", cuisine_id: cuisine_italian.id)
calibocca.remote_photo_url = urlr3
calibocca.save!

urlr4 = "https://img.taste.com.au/TRoLTh6r/taste/2016/11/pork-and-beef-ragu-with-spaghetti-95474-1.jpeg"
cuore_di_vetro = Restaurant.new(name: "Cuore Vetro", address: "Max-Beer-Straße 33, 10119 Berlin", cuisine_id: cuisine_italian.id)
cuore_di_vetro.remote_photo_url = urlr4
cuore_di_vetro.save!

urlr5 = "https://images.pexels.com/photos/1179803/pexels-photo-1179803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
amrit = Restaurant.new(name: "Amrit", address: "Ebertstraße 14, 10117 Berlin", cuisine_id: cuisine_indian.id)
amrit.remote_photo_url = urlr5
amrit.save!

urlr6 = "https://images.pexels.com/photos/461326/pexels-photo-461326.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
delhi_6 = Restaurant.new(name: "Delhi 6", address: "Friedrichstraße 237, 10969 Berlin", cuisine_id: cuisine_indian.id)
delhi_6.remote_photo_url = urlr6
delhi_6.save!


urlr7 = "https://static1.squarespace.com/static/5b280045697a98dfbc04cef4/t/5b282a4daa4a99350be2e863/1551124278704/saffron+valley+sugarhouse+Indian+food+Saffron+Bistro"
swera = Restaurant.new(name: "Swera", address: "Bergmannstraße 103, 10961 Berlin", cuisine_id: cuisine_indian.id)
swera.remote_photo_url = urlr7
swera.save!

urlr8 = "https://images.unsplash.com/photo-1540713304937-18ad930d3594?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
izumi = Restaurant.new(name: "Izumi", address: "Kronenstraße 66, 10117 Berlin", cuisine_id: cuisine_japanese.id)
izumi.remote_photo_url = urlr8
izumi.save!

urlr9 = "https://www.ahstatic.com/photos/5931_rsr003_00_p_1024x768.jpg"
sakura_2 = Restaurant.new(name: "Sakura II", address: "Kaiserdamm 32, 14057 Berlin", cuisine_id: cuisine_japanese.id)
sakura_2.remote_photo_url = urlr9
sakura_2.save!

urlr10 = "https://images.unsplash.com/photo-1515668236457-83c3b8764839?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
cocolo = Restaurant.new(name: "Cocolo", address: "Gipsstr. 3, in 10119 Berlin", cuisine_id: cuisine_japanese.id)
cocolo.remote_photo_url = urlr10
cocolo.save!

urlr11 = "https://images.pexels.com/photos/46239/salmon-dish-food-meal-46239.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
poulette = Restaurant.new(name: "Poulette", address: "Knaackstraße 30-32, 10405 Berlin", cuisine_id: cuisine_french.id)
poulette.remote_photo_url = urlr11
poulette.save!

urlr12 = "https://images.pexels.com/photos/323682/pexels-photo-323682.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
fabourg = Restaurant.new(name: "Faubourg", address: "Augsburger Str. 41, 10789 Berlin", cuisine_id: cuisine_french.id)
fabourg.remote_photo_url = urlr12
fabourg.save!

urlr13 = "https://www.paradisoinsurance.com/wp-content/uploads/2018/01/tableware-at-restaurant.jpg"
lumieres = Restaurant.new(name: "Lumières", address: "Potsdamer Straße 102, 10785 Berlin", cuisine_id: cuisine_french.id)
lumieres.remote_photo_url = urlr13
lumieres.save!

urlr14 = "https://mein.hofer.at/medias/RZP-R-Schnitzel-mit-Pommes-frites-und-Thai-Curry-Gewuerzsalz-RZ023286-RecipeImage-647x465?context=bWFzdGVyfGltYWdlc3w3NDQxMjB8aW1hZ2UvcG5nfGltYWdlcy9oODkvaDE1Lzg5NTExNzIzMDA4MzAucG5nfDdkMjA2MjU3MGFkYjQzNzRiYzEwMDhhMWYzYzgwZjRmMmY4OWUxNmQ1OTdhYTM0OTc0ZDc0M2JhZjI2ZDMxYjc"
schnitzelei = Restaurant.new(name: "Schnitzeli", address: "Chausseestraße 8, 10115 Berlin", cuisine_id: cuisine_german.id)
schnitzelei.remote_photo_url = urlr14
schnitzelei.save!

urlr15 = "https://images.pexels.com/photos/675951/pexels-photo-675951.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
gendarmarie = Restaurant.new(name: "Gendamarie", address: "Behrenstraße 42, 10117 Berlin", cuisine_id: cuisine_german.id)
gendarmarie.remote_photo_url = urlr15
gendarmarie.save!

urlr16 = "https://resizer.otstatic.com/v2/photos/huge/24943716.jpg"
lemke = Restaurant.new(name: "Lemke", address: "Luisenplatz 1, 10585 Berlin", cuisine_id: cuisine_german.id)
lemke.remote_photo_url = urlr16
lemke.save!

urlr17 = "https://img.taste.com.au/w_-0kcUJ/taste/2016/11/aussie-style-beef-and-salad-tacos-86525-1.jpeg"
cancun = Restaurant.new(name: "Cancun", address: "Rathausstraße 5-13, 10178 Berlin", cuisine_id: cuisine_mexican.id)
cancun.remote_photo_url = urlr17
cancun.save!

urlr18 = "http://www.quepasa-berlin.de/content/images/bg/bg_quepasa_home2.jpg"
que_pasa = Restaurant.new(name: "Que Pasa", address: "Voxstraße 2, 10785 Berlin", cuisine_id: cuisine_mexican.id)
que_pasa.remote_photo_url = urlr18
que_pasa.save!

urlr19 = "https://eu2prddennyscdnstr.blob.core.windows.net/cms/menu/product/zesty-nachos_thumbnaillarge_2017-05-29-13-36-51.jpg"
que_pasa = Restaurant.new(name: "Lupita", address: "Bergmannstraße 11, 10961 Berlin", cuisine_id: cuisine_mexican.id)
que_pasa.remote_photo_url = urlr19
que_pasa.save!

urlr20 = "http://ricetteindiane.it/image/data/12.jpg"
shezan = Restaurant.new(name: "Shezan", address: "Neue Roßstraße 13, 10179 Berlin", cuisine_id: cuisine_indian.id)
shezan.remote_photo_url = urlr20
shezan.save!




url1 ="https://images.unsplash.com/photo-1550358383-5d09ab478bde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"
tom = User.new(email: "tom@gmail.com", first_name: "Tom", gender: "male", last_name: "Taylor", date_of_birth: "1990-08-08", gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
tom.remote_photo_url = url1
tom.save!


url2 ="https://images.unsplash.com/photo-1548532928-b34e3be62fc6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=867&q=80"
marcus = User.new(email: "marcus@gmail.com", first_name: "Marcus", gender: "male", last_name: "Williams", date_of_birth: "1980-08-08", gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
marcus.remote_photo_url = url2
marcus.save!

url3 ="https://images.unsplash.com/photo-1542345812-d98b5cd6cf98?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
tim = User.new(email: "tim@gmail.com", first_name: "Tim", last_name: "Becker", gender: "male", date_of_birth: "1985-12-08", gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
tim.remote_photo_url = url3
tim.save!

url4 ="https://images.unsplash.com/photo-1543229912-d69e86dc1dc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
stephan = User.new(email: "stephan@gmail.com", first_name: "Stephan", last_name: "Meyer", gender: "male", date_of_birth: "1983-12-12", gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
stephan.remote_photo_url = url4
stephan.save!

url5 ="https://images.unsplash.com/photo-1501325087108-ae3ee3fad52f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
jan = User.new(email: "jan@gmail.com", first_name: "Jan", last_name: "Lehmann", gender: "male", date_of_birth: "1998-12-12", gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
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
oliver = User.new(email: "oliver@gmail.com", first_name: "Oliver", last_name: "Dalton", gender: "male", date_of_birth: "1968-04-12", gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
oliver.remote_photo_url = url8
oliver.save!

url9 ="https://images.unsplash.com/photo-1539598492601-581aa9675a30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
harry = User.new(email: "harry@gmail.com", first_name: "Harry", last_name: "Kinsley", gender: "male", date_of_birth: "1983-12-01", gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
harry.remote_photo_url = url9
harry.save!

url10 ="https://images.unsplash.com/photo-1551617405-f1fc4bcd9f25?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=662&q=80"
charlie = User.new(email: "charlie@gmail.com", first_name: "Charlie", last_name: "Mitchell", gender: "male", date_of_birth: "1998-12-31", gender_preference: "woman", age_preference_from: 18  , age_preference_to: 90, password: 123456)
charlie.remote_photo_url = url10
charlie.save!

url11 ="https://images.unsplash.com/photo-1523545803985-5359300393e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"
sandra = User.new(email: "sandra@gmail.com", first_name: "Sandra", gender: "female", last_name: "Dudley", date_of_birth: "1988-08-09", gender_preference: "man", age_preference_from: 18  , age_preference_to: 90, password: 123456)
sandra.remote_photo_url = url11
sandra.save!

url13 ="https://images.unsplash.com/photo-1498551172505-8ee7ad69f235?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
stacey = User.new(email: "stacey@gmail.com", first_name: "Stacey", last_name: "Adams", gender: "female", date_of_birth: "1985-06-08", gender_preference: "man", age_preference_from: 18  , age_preference_to: 90, password: 123456)
stacey.remote_photo_url = url13
stacey.save!

url15 ="https://images.unsplash.com/photo-1504911539020-cfb0f7887a5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"
tiffany = User.new(email: "tiffany@gmail.com", first_name: "Tiffany", last_name: "Johnson", gender: "female", date_of_birth: "1998-10-12", gender_preference: "man", age_preference_from: 18  , age_preference_to: 90, password: 123456)
tiffany.remote_photo_url = url15
tiffany.save!

url16 ="https://images.unsplash.com/photo-1477118476589-bff2c5c4cfbb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"
nina = User.new(email: "nina@gmail.com", first_name: "Nina", last_name: "Miller", gender: "female", date_of_birth: "1984-04-08", gender_preference: "man", age_preference_from: 18  , age_preference_to: 90, password: 123456)
nina.remote_photo_url = url16
nina.save!

url17 ="https://images.unsplash.com/photo-1500917293891-ef795e70e1f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
sakura = User.new(email: "sakura@gmail.com", first_name: "Sakura", last_name: "Shimizu", gender: "female", date_of_birth: "1987-03-05", gender_preference: "man", age_preference_from: 18  , age_preference_to: 90, password: 123456)
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

url20 ="https://images.unsplash.com/photo-1504703395950-b89145a5425b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=351&q=80"
andrea = User.new(email: "andrea@gmail.com", first_name: "Andrea", last_name: "Stevenson", gender: "female", date_of_birth: "1965-05-25" , gender_preference: "man", age_preference_from: 18  , age_preference_to: 90, password: 123456)
andrea.remote_photo_url = url20
andrea.save!


puts "succesfully created #{User.count}"
