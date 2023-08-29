# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Faker::Config.locale = 'de'
120.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email_name = "#{first_name.downcase}.#{last_name.downcase}"
  phone_number = Faker::PhoneNumber.phone_number
  User.create!(
    first_name: first_name,
    last_name: last_name,
    email: "#{email_name}@example.com",
    password: "123456",
    address: Faker::Address.street_address,
    age: rand(16..35)
  )
end
User.create!(
  first_name: "Giovane",
  last_name: "Nery",
  email: "giovane.nery@hotmail.com",
  password: "123456",
  address: Faker::Address.street_address,
  picture: "Giovane.png"
)
User.create!(
  first_name: "Ozge",
  last_name: "Kilic",
  email: "ozgeklc096@gmail.com",
  password: "123456",
  address: Faker::Address.street_address,
  picture: "ozge.jpg"

)
User.create!(
  first_name: "Ulrich",
  last_name: "Thofehrn",
  email: "welfito@icloud.com",
  password: "123456",
  address: Faker::Address.street_address
)

Subject.create!(
  name: "Physics"
)
Subject.create!(
  name: "Biology"
)
Subject.create!(
  name: "Psychology"
)
Subject.create!(
  name: "Math"
)
Subject.create!(
  name: "Sports"
)
Subject.create!(
  name: "Agriculture"
)
Subject.create!(
  name: "Geography"
)
Subject.create!(
  name: "Chemistry"
)
Subject.create!(
  name: "Economics"
)
Subject.create!(
  name: "Engineering"
)
Subject.create!(
  name: "Art"
)
Subject.create!(
  name: "Architecture"
)
Subject.create!(
  name: "Pedagogy"
)
Subject.create!(
  name: "Business Admin"
)
Subject.create!(
  name: "Law"
)
Subject.create!(
  name: "Languages"
)
Subject.create!(
  name: "Humanities"
)
Subject.create!(
  name: "Literature"
)
Subject.create!(
  name: "Computer Science"
)
Subject.create!(
  name: "Social studies"
)
Subject.create!(
  name: "Philosophy"
)

Group.create!(
  name: "Atomic and chemical physics",
  description: "We will break the atom into its particles together",
  group_picture: "atomic.jpg",
  subject_id: 1,
  user_id: rand(1..120)
)

Group.create!(
  name: "Optics",
  group_picture: "Optics.jpg",
  subject_id: "1",
  user_id: rand(1..120)
)
Group.create!(
  name: "Quantum mechanics",
  description: "We are waitig for all quantum lovers",
  group_picture: "Quantum.jpg",
  subject_id: "1",
  user_id: rand(1..120)
)
Group.create!(
  name: "Microbiology",
  group_picture: "microbiology.jpg",
  subject_id: 2,
  user_id: rand(1..120)
)
Group.create!(
  name: "Ecology",
  description: "",
  group_picture: "ecology.jpg",
  subject_id: 2,
  user_id: rand(1..120)
)
Group.create!(
  name: "Genetics",
  description: "Join us for bright future",
  group_picture: "genetics.jpg",
  subject_id: 2,
  user_id: rand(1..120)
)
