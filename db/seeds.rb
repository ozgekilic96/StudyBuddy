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
  picture: "Giovane.png",
  age: 24
)

User.create!(
  first_name: "Ozge",
  last_name: "Kilic",
  email: "ozgeklc096@gmail.com",
  password: "123456",
  address: Faker::Address.street_address,
  picture: "",
  age: 27
)

User.create!(
  first_name: "Ulrich",
  last_name: "Thofehrn",
  email: "welfito@icloud.com",
  password: "123456",
  address: Faker::Address.street_address,
  age: 24
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
  name: "Business Administration"
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
Group.create!(
  name: "Clinical psychology",
  description: "",
  group_picture: "clinic.jpg",
  subject_id: 3,
  user_id: rand(1..120)
)
Group.create!(
  name: "Abnormal psychology",
  description: "",
  group_picture: "abnormal.jpg",
  subject_id: 3,
  user_id: rand(1..120)
)
Group.create!(
  name: "Schizophrenia",
  description: "",
  group_picture: "schizophrenia.jpg",
  subject_id: 3,
  user_id: rand(1..120)
)
Group.create!(
  name: "Statistics",
  description: "",
  group_picture: "statisticsçjpg",
  subject_id: 4,
  user_id: rand(1..120)
)
Group.create!(
  name: "Algebra",
  description: "",
  group_picture: "algo.jpg",
  subject_id: 4,
  user_id: rand(1..120)
)
Group.create!(
  name: "Calculus",
  description: "",
  group_picture: "calculus.webp",
  subject_id: 4,
  user_id: rand(1..120)
)
Group.create!(
  name: "Anatomy and Physiology",
  description: "",
  group_picture: "anatomy.webp",
  subject_id: 5,
  user_id: rand(1..120)
)
Group.create!(
  name: "Sports medicine",
  description: "",
  group_picture: "medicine.jpg",
  subject_id: 5,
  user_id: rand(1..120)
)
Group.create!(
  name: "Sports Nutrition",
  description: "",
  group_picture: "Nutrition.jpg",
  subject_id: 5,
  user_id: rand(1..120)
)
Group.create!(
  name: "Plant Pathology",
  description: "",
  group_picture: "pathology.png",
  subject_id: 6,
  user_id: rand(1..120)
)
Group.create!(
  name: "Crop Science",
  description: "",
  group_picture: "crop.jpg",
  subject_id: 6,
  user_id: rand(1..120)
)
Group.create!(
  name: "Horticulture",
  description: "",
  group_picture: "horti.jpg",
  subject_id: 6,
  user_id: rand(1..120)
)
Group.create!(
  name: "Cultural and Historical Geography",
  description: "",
  group_picture: "cultural.jpg",
  subject_id: 7,
  user_id: rand(1..120)
)
Group.create!(
  name: "Geography of Health and Disease",
  description: "",
  group_picture: "hav.png",
  subject_id: 7,
  user_id: rand(1..120)
)
Group.create!(
  name: "Cartography",
  description: "",
  group_picture: "cartography.jpg",
  subject_id: 7,
  user_id: rand(1..120)
)
Group.create!(
  name: "Organic Chemistry",
  description: "",
  group_picture: "organic.jpg",
  subject_id: 8,
  user_id: rand(1..120)
)
Group.create!(
  name: "Nanotechnology",
  description: "",
  group_picture: "nano.jpg",
  subject_id: 8,
  user_id: rand(1..120)
)
Group.create!(
  name: "Biochemistry",
  description: "",
  group_picture: "biochemistry.jpg",
  subject_id: 8,
  user_id: rand(1..120)
)
Group.create!(
  name: "Microeconomics",
  description: "",
  group_picture: "micro.webp",
  subject_id: 9,
  user_id: rand(1..120)
)
Group.create!(
  name: "Macroeconomics",
  description: "",
  group_picture: "macroeconomics.jpg",
  subject_id: 9,
  user_id: rand(1..120)
)
Group.create!(
  name: "Industrial Organization",
  description: "",
  group_picture: "IndustrialOrganization.jpeg",
  subject_id: 9,
  user_id: rand(1..120)
)
Group.create!(
  name: "Industrial Engineering",
  description: "",
  group_picture: "industrial.jpg",
  subject_id: 10,
  user_id: rand(1..120)
)
Group.create!(
  name: "Mechatronics Engineering",
  description: "",
  group_picture: "mecha.jpg",
  subject_id: 10,
  user_id: rand(1..120)
)
Group.create!(
  name: "Civil Engineering",
  description: "",
  group_picture: "Civil-engineers.jpg",
  subject_id: 10,
  user_id: rand(1..120)
)
Group.create!(
  name: "Music",
  description: "",
  group_picture: "music.jpg",
  subject_id: 11,
  user_id: rand(1..120)
)
Group.create!(
  name: "Art History",
  description: "",
  group_picture: "art.jpg",
  subject_id: 11,
  user_id: rand(1..120)
)
Group.create!(
  name: "Digital Arts",
  description: "",
  group_picture: "digital.jpg",
  subject_id: 11,
  user_id: rand(1..120)
)

Group.create!(
  name: "Urban Planning and Design",
  description: "",
  group_picture: "urban.jpg",
  subject_id: 12,
  user_id: rand(1..120)
)
Group.create!(
  name: "Interior Architecture and Design",
  description: "",
  group_picture: "interior.jpg",
  subject_id: 12,
  user_id: rand(1..120)
)
Group.create!(
  name: "Architectural History",
  description: "",
  group_picture: "Babel.jpg",
  subject_id: 12,
  user_id: rand(1..120)
)
Group.create!(
  name: "Motivation and Engagement",
  description: "",
  group_picture: "motivation.jpg",
  subject_id: 13,
  user_id: rand(1..120)
)
Group.create!(
  name: "Critical Pedagogy",
  description: "",
  group_picture: "critical.jpg",
  subject_id: 13,
  user_id: rand(1..120)
)
Group.create!(
  name: "Reflective Practice",
  description: "",
  group_picture: "reflective.jpg",
  subject_id: 13,
  user_id: rand(1..120)
)
Group.create!(
  name: "Human Resource Management",
  description: "",
  group_picture: "hr.webp",
  subject_id: 14,
  user_id: rand(1..120)
)
Group.create!(
  name: "Marketing",
  description: "",
  group_picture: "marketing.webp",
  subject_id: 14,
  user_id: rand(1..120)
)
Group.create!(
  name: "Management Principles",
  description: "",
  group_picture: "principles.jpg",
  subject_id: 14,
  user_id: rand(1..120)
)
Group.create!(
  name: "Criminal Law",
  description: "",
  group_picture: "criminallaw.jpg",
  subject_id: 15,
  user_id: rand(1..120)
)
Group.create!(
  name: "Civil Law",
  description: "",
  group_picture: "civillaw.webp",
  subject_id: 15,
  user_id: rand(1..120)
)
Group.create!(
  name: "Administrative Law",
  description: "",
  group_picture: "admin.jpg",
  subject_id: 15,
  user_id: rand(1..120)
)
Group.create!(
  name: "Slovenian",
  description: "",
  group_picture: "slovenian.jpg",
  subject_id: 16,
  user_id: rand(1..120)
)
Group.create!(
  name: "Ukranian",
  description: "",
  group_picture: "Ukrainian.jpg",
  subject_id: 16,
  user_id: rand(1..120)
)
Group.create!(
  name: "Swedish",
  description: "",
  group_picture: "swedish.jpg.webp",
  subject_id: 16,
  user_id: rand(1..120)
)
Group.create!(
  name: "Literature",
  description: "",
  group_picture: "liteture.webp",
  subject_id: 17,
  user_id: rand(1..120)
)
Group.create!(
  name: "History",
  description: "",
  group_picture: "history.jpg",
  subject_id: 17,
  user_id: rand(1..120)
)
Group.create!(
  name: "Archaeology",
  description: "",
  group_picture: "archeology.jpg",
  subject_id: 17,
  user_id: rand(1..120)
)
Group.create!(
  name: "Cybersecurity",
  description: "",
  group_picture: "cybersecurity.jpg",
  subject_id: 18,
  user_id: rand(1..120)
)
Group.create!(
  name: "Software Engineering",
  description: "",
  group_picture: "sofware.jpg",
  subject_id: 18,
  user_id: rand(1..120)
)
Group.create!(
  name: "Artificial Intelligence",
  description: "",
  group_picture: "artificial.jpeg",
  subject_id: 18,
  user_id: rand(1..120)
)
Group.create!(
  name: "Human Rights Studies",
  description: "human_rights.jpg",
  group_picture: "",
  subject_id: 19,
  user_id: rand(1..120)
)
Group.create!(
  name: "Sociology",
  description: "",
  group_picture: "socilogie.jpg",
  subject_id: 19,
  user_id: rand(1..120)
)
Group.create!(
  name: "Anthropology",
  description: "Anthropology.jpg",
  group_picture: "",
  subject_id: 19,
  user_id: rand(1..120)
)
Group.create!(
  name: "Epistemology",
  description: "",
  group_picture: "Epistemology.webp",
  subject_id: 20,
  user_id: rand(1..120)
)
Group.create!(
  name: "Metaphysics",
  description: "",
  group_picture: "meta.webp",
  subject_id: 20,
  user_id: rand(1..120)
)
Group.create!(
  name: "Philosophy of Science",
  description: "Welcome to most supportive group.",
  group_picture: "philo.jpeg",
  subject_id: 20,
  user_id: rand(1..120)
)
# seed.rb

# Create 5 membership records
50.times do
  Membership.create!(
    group_id: Group.pluck(:id).sample,
    user_id: User.pluck(:id).sample,
    created_at: Time.now,
    updated_at: Time.now
  )
end
