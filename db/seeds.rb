# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(name: "Textbook")
Category.create(name: "Comic")

Product.create(name: "sachgiaokhoa", price: 20, author: "khanh")
Product.create(name: "sach tieng anh", price: 20, author: "khanh")
Product.create(name: "sach toan", price: 20, author: "khanh")
Product.create(name: "batman", price: 20, author: "khanh")
Product.create(name: "harry potter", price: 20, author: "khanh")

Tagging.create(category: Category.first, product: Product.first)
Tagging.create(category: Category.first, product: Product.second)
Tagging.create(category: Category.first, product: Product.third)
Tagging.create(category: Category.second, product: Product.fourth)
Tagging.create(category: Category.second, product: Product.fifth)
AdminUser.create(email: 'admin@khanh.com', password: 'password', password_confirmation: 'password')
User.create(email: 'khanh@gmail.com', password: '123123', password_confirmation: '123123')

# Comment.create(product: Product.first, user: User.first, text: "nice book", rating: 4)