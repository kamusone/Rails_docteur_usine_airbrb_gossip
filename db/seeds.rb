# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
5.times do
  Doctor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    specialty_name: Faker::Internet.email,
    postal_code: rand(100).to_s
  )
end

5.times do

  Patient.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

5.times do

  Appointment.create(
    date: Faker::Date.forward(23),
    doctor_id: rand((Doctor.first.id)..(Doctor.last.id)),
    patient_id: rand((Patient.first.id)..(Patient.last.id))
  )
end
