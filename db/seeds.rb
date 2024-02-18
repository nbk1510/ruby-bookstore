
User.create(email: 'nbk1510@gmail.com', password: 'password', password_confirmation: '123123')
u_list = []
(1..5000).to_a.each do |e|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  u_list << User.new(
    email: "#{first_name}.#{last_name}#{e}@gmail.com",
    password: 'password',
    first_name: first_name,
    last_name: last_name
  )
end
User.import(u_list)
# Comment.create(product: Product.first, user: User.first, text: "nice book", rating: 4)
