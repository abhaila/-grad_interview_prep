# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."

User.destroy_all
Order.destroy_all
Booking.destroy_all
Post.destroy_all
Course.destroy_all

puts "Creating users...."

areeb = User.create!(email: "areeb@grad.com", password: "secret", admin: false)
jonny = User.create!(email: "jonny@grad.com", password: "secret", admin: true)

puts "Done! #{User.count} users created."
puts "Done! #{Course.count} courses created."
