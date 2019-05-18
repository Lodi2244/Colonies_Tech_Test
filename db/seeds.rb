# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Studio.destroy_all
p 'creating 10 studios'

10.times do
  Studio.create!(name: Faker::TvShows::GameOfThrones.house, monthly_price: Faker::Number.decimal(2))
end

Tenant.destroy_all
p 'creating 20 tenants'

20.times do
  Tenant.create!(email: Faker::Internet.email)
end

Stay.destroy_all
p 'creating 8 stays'

8.times do
  Stay.create!(start_time: Faker::Time.between(DateTime.now, DateTime.now + 62), end_time: Faker::Time.between(DateTime.now, DateTime.now + 62), studio: Studio.all.sample, tenant: Tenant.all.sample)
end
