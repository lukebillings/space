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


company_destinations = CompanyDestination.create([{ flight_name: "Voyage 1",company_id: 1, destination_id: 1, price: 100_000, vehicle: 'Baloon', distance: 50, next_bookable_flight: 2022 },
{ flight_name: "Earth View", company_id: 2, destination_id: 1, price: 120_000, vehicle: 'Plane', distance: 50, next_bookable_flight: 2024 },
{ flight_name: "New Perspective", company_id: 3, destination_id: 2, price: 300_000, vehicle: 'Rocket', distance: 85, next_bookable_flight: 2025 },
{ flight_name: "Space Journey", company_id: 4, destination_id: 2, price: 400_000, vehicle: 'Rocket', distance: 85, next_bookable_flight: 2026 },
{ flight_name: "Beyond Earth", company_id: 5, destination_id: 3, price: 700_000, vehicle: 'Rocket', distance: 700, next_bookable_flight: 2022 },
{ flight_name: "Orbital Cruise", company_id: 6, destination_id: 3, price: 1_000_000, vehicle: 'Baloon', distance: 700, next_bookable_flight: 2023 },
{ flight_name: "ISS Voyage", company_id: 7, destination_id: 4, price: 2_000_000, vehicle: 'Baloon', distance: 500, next_bookable_flight: 2025  },
{ flight_name: "Mission Moon", company_id: 8, destination_id: 5, price: 10_000_000, vehicle: 'Rocket', distance: 500_000, next_bookable_flight: 2026 },
{ flight_name: "Mars Explorer", company_id: 8, destination_id: 6, price: 100_000_000, vehicle: 'Rocket', distance: 400_000_000, next_bookable_flight: 2024 }])
