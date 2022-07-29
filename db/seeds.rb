# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


destinations = Destination.create([{ name: 'Atmosphere' }, { name: 'Space' }, { name: 'ISS' }])


companies = Company.create([{ name: 'Space Views', starting_price: 250_000, vehicle: 'Baloon' },
    { name: 'Galaxy Travel', starting_price: 250_000, vehicle: 'Plane' },
    { name: 'Red Space', starting_price: 56_000_000, vehicle: 'Rocket' },
    { name: 'Spacey', starting_price: 110_000_000, vehicle: 'Rocket' },
    { name: 'Go Space', starting_price: 30_000_000, vehicle: 'Rocket' },
    { name: 'Infinity Beyond', starting_price: 300_000, vehicle: 'Baloon' },
    { name: 'View Space', starting_price: 100_000, vehicle: 'Baloon' },
    { name: 'SpaceA', starting_price: 100_000_000, vehicle: 'Rocket' }])


company_destinations = CompanyDestination.create([{ company_id: 1, destination_id: 1 },
{ company_id: 2, destination_id: 1 },
{ company_id: 3, destination_id: 2 },
{ company_id: 4, destination_id: 2 },
{ company_id: 4, destination_id: 3 },
{ company_id: 5, destination_id: 3 },
{ company_id: 6, destination_id: 1 },
{ company_id: 7, destination_id: 1 },
{ company_id: 8, destination_id: 3 }])
