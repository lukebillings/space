   # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


destinations = Destination.create([{ name: 'Troposphere' }, { name: 'Stratosphere' }, { name: 'Thermosphere' }, { name: 'ISS' }, { name: 'Moon' }, { name: 'Mars' }])


companies = Company.create([{ name: 'NA' },
    { name: 'HALO Space' },
    { name: 'Virgin Galactic' },
    { name: 'NA' },
    { name: 'NA' },
    { name: 'NA' },
    { name: 'NA' },
    { name: 'NA' }])


company_destinations = CompanyDestination.create([
  { flight_name: "Zero gravity flight", company_id: 1, destination_id: 1, price: 9_000, vehicle: 'Plane', distance: 9.0, next_bookable_flight: 2023 },
  { flight_name: "HALO Space experience",company_id: 2, destination_id: 2, price: 200_000, vehicle: 'Balloon', distance: 35, next_bookable_flight: 2025 },
{ flight_name: "Virgin Galactic Spaceflight", company_id: 3, destination_id: 3, price: 450_000, vehicle: 'Plane', distance: 91.44, next_bookable_flight: 2025},
{ flight_name: "Virgin Galactic Spaceflight", company_id: 3, destination_id: 3, price: 450_000, vehicle: 'Plane', distance: 91.44, next_bookable_flight: 2026},
{ flight_name: "Virgin Galactic Spaceflight", company_id: 3, destination_id: 3, price: 450_000, vehicle: 'Plane', distance: 91.44, next_bookable_flight: 2027},
{ flight_name: "Sub-orbital spaceflight", company_id: 6, destination_id: 3, price: 1400_000, vehicle: 'Rocket', distance: 110, next_bookable_flight: 2024 },
{ flight_name: "ISS spaceflight", company_id: 7, destination_id: 4, price: 55_000_000, vehicle: 'Rocket', distance: 408, next_bookable_flight: 2024  },
{ flight_name: "Moon spaceflight", company_id: 8, destination_id: 5, price: 100_000_000, vehicle: 'Rocket', distance: 384_400, next_bookable_flight: 2025 },
{ flight_name: "Mars spaceflight", company_id: 8, destination_id: 6, price: 500_000, vehicle: 'Rocket', distance: 250_000_000, next_bookable_flight: 2033 }])
