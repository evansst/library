# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all
Author.destroy_all

atwood = Author.create(name: "Margaret Atwood", genre: "Fiction")
king = Author.create(name: "Stephen King", genre: "Horror")
sparks = Author.create(name: "Nicholas Sparks", genre: "Romance")

book1 = Book.create(title: "The Handmaid's Tale", rating: 5, author: atwood)
