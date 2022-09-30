# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


destinations = Destination.create([{ name: 'Stratosphere' }, { name: 'Mesosphere' }, { name: 'Thermosphere' }, { name: 'ISS' }, { name: 'Moon' }, { name: 'Mars' }])


companies = Company.create([{ name: 'Space Views' },
    { name: 'Galaxy Travel' },
    { name: 'Red Space' },
    { name: 'Spacey' },
    { name: 'Go Space' },
    { name: 'Infinity Beyond' },
    { name: 'View Space' },
    { name: 'SpaceA' }])


company_destinations = CompanyDestination.create([{ flight_name: "Flight 1",company_id: 1, destination_id: 1, price: 250_000, vehicle: 'Baloon', distance: 50 },
{ flight_name: "Flight 2", company_id: 2, destination_id: 1, price: 56_000_000, vehicle: 'Plane', distance: 50 },
{ flight_name: "Flight 3", company_id: 3, destination_id: 2, price: 110_000_000, vehicle: 'Rocket', distance: 85 },
{ flight_name: "Flight 4", company_id: 4, destination_id: 2, price: 30_000_000, vehicle: 'Rocket', distance: 85 },
{ flight_name: "Flight 5", company_id: 5, destination_id: 3, price: 300_000, vehicle: 'Rocket', distance: 700 },
{ flight_name: "Flight 6", company_id: 6, destination_id: 3, price: 100_000, vehicle: 'Baloon', distance: 700 },
{ flight_name: "Flight 7", company_id: 7, destination_id: 4, price: 100_000, vehicle: 'Baloon', distance: 500  },
{ flight_name: "Flight 8", company_id: 8, destination_id: 5, price: 100_000, vehicle: 'Rocket', distance: 500_000 },
{ flight_name: "Flight 9", company_id: 9, destination_id: 6, price: 100_000_000, vehicle: 'Rocket', distance: 400_000_000 }])
