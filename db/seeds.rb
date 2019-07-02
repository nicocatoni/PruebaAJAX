# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Company.destroy_all

20.times do
  Company.create(title: Faker::Company.name)
end

User.create(username: 'nicolas', email: 'nicolas@nicolas.cl', password: '123456')
29.times do
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.email, password: '123456')
end

250.times do
  Complaint.create(
    user_id: User.order("random()").first.id,
    company_id: Company.order("random()").first.id,
    comment: Faker::Hacker.say_something_smart
  )
end