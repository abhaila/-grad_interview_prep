# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

maths_img = URI.open('https://images.unsplash.com/photo-1453733190371-0a9bedd82893?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80')

puts "Cleaning database..."

User.destroy_all
Course.destroy_all

puts "Creating users...."

areeb = User.create!(email: "areeb@grad.com", password: "secret", admin: true)
jonny = User.create!(email: "jonny@grad.com", password: "secret", admin: true)

puts "Creating courses..."

puts "Done! #{User.count} users created."
puts "Done! #{Course.count} courses created."
