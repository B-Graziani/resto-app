# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning DB"
Article.destroy_all
puts "creating DB"
article1 = { title: "chez BOBO", body: "au coin de la rue", stars: "5" }
article2 = { title: "chez WUNG", body: "au coin de la rue", stars: "4"}
article3 = { title: "chez MCDO", body: "au coin de la rue", stars: "3"}
article4 = { title: "chez KFC", body: "au coin de la rue", stars: "2"}
article5 = { title: "chez ARC", body: "au coin de la rue", stars: "5"}
Articles = []
[article1, article2, article3, article4, article5].each_with_index do |attributes,index|
article = Article.create!(attributes)
Articles << article
end
