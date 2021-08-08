# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Review.delete_all



shoe = Product.create(name: "shoe", price: 10, rating: 5)
mask = Product.create(name: "mask", price:5, rating: 3)

review1 = Review.create(user: User.first, review_text: "this was amazing", review_rating: 6, product_id: Product.first[:id])
review2 = Review.create(user: User.first, review_text: "i hope this works", review_rating: 9, product_id: Product.first[:id])