# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

companies = [] # create empty array to store objects
5.times do |i|
  companies << Company.new(
  name: Faker::Company.name,
  )
end
Company.import companies, batch_size: 1_000 # or use import!

company_count = ((1..5).to_a)
employees = [] # create empty array to store objects
50.times do |i|
  employees << Employee.new(
  name: Faker::Name.name,
  company_id: company_count.sample
  )
end
Employee.import employees, batch_size: 1_000 # or use import!
