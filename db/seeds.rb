# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Faker::Config.locale = 'de'
User.create!(
  first_name: "Giovane",
  last_name: "Nery",
  email: "giovane.nery@hotmail.com",
  password: "123456",
  address: "Berlin",
  picture: "Giovane.png",
  age: 24
)

ozge = User.create!(
  first_name: "Ozge",
  last_name: "Kilic",
  email: "ozgeklc096@gmail.com",
  password: "123456",
  address: "Berlin",
  picture: "ozge.jpeg",
  age: 27
)

ulrich = User.create!(
  first_name: "Ulrich",
  last_name: "Thofehrn",
  email: "welfito@icloud.com",
  password: "123456",
  address: "Berlin",
  age: 24
)

15.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email_name = "#{first_name.downcase}.#{last_name.downcase}"
  phone_number = Faker::PhoneNumber.phone_number
  User.create!(
    first_name: first_name,
    last_name: last_name,
    email: "#{email_name}@example.com",
    password: "123456",
    address: "Berlin",
    age: rand(16..35)
  )
end

Subject.create!(
  name: "Physics"
)
biology = Subject.create!(
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
  group_picture: "atomic_nei5yy",
  subject_id: 1,
  user_id: rand(1..15)
)

Group.create!(
  name: "Optics",
  group_picture: "Optics_bdrz5a",
  subject_id: "1",
  user_id: rand(1..15)
)
Group.create!(
  name: "Quantum mechanics",
  description: "We are waitig for all quantum lovers",
  group_picture: "Quantum_h4eydq",
  subject_id: "1",
  user_id: rand(1..15)
)
microbiology_group = Group.create!(
  name: "Microbiology",
  group_picture: "microbiology_smrx0f",
  subject_id: 2,
  user_id: rand(1..15)
)
ecology_group = Group.create!(
  name: "Ecology",
  description: "",
  group_picture: "ecology_zt2syw",
  subject_id: 2,
  user_id: rand(1..15)
)
Group.create!(
  name: "Genetics",
  description: "Join us for bright future",
  group_picture: "genetic_duts9m",
  subject_id: 2,
  user_id: rand(1..15)
)
Group.create!(
  name: "Clinical psychology",
  description: "",
  group_picture: "clinic_vjdiv8",
  subject_id: 3,
  user_id: rand(1..15)
)
Group.create!(
  name: "Abnormal psychology",
  description: "",
  group_picture: "abnormal_snvveo",
  subject_id: 3,
  user_id: rand(1..15)
)
Group.create!(
  name: "Schizophrenia",
  description: "",
  group_picture: "schizophrenia_clbhhc",
  subject_id: 3,
  user_id: rand(1..15)
)
Group.create!(
  name: "Statistics",
  description: "",
  group_picture: "statistics_luzzar",
  subject_id: 4,
  user_id: rand(1..15)
)
Group.create!(
  name: "Algebra",
  description: "",
  group_picture: "algo_jbdbdo",
  subject_id: 4,
  user_id: rand(1..15)
)
Group.create!(
  name: "Calculus",
  description: "",
  group_picture: "calculus_ejlnqt",
  subject_id: 4,
  user_id: rand(1..15)
)
Group.create!(
  name: "Anatomy and Physiology",
  description: "",
  group_picture: "anatomy_iwj35z",
  subject_id: 5,
  user_id: rand(1..15)
)
Group.create!(
  name: "Sports medicine",
  description: "",
  group_picture: "medicine_uo0uwx",
  subject_id: 5,
  user_id: rand(1..15)
)
Group.create!(
  name: "Sports Nutrition",
  description: "",
  group_picture: "Nutrition_ghu9rs",
  subject_id: 5,
  user_id: rand(1..15)
)
Group.create!(
  name: "Plant Pathology",
  description: "",
  group_picture: "pathology_pcbtsl",
  subject_id: 6,
  user_id: rand(1..15)
)
Group.create!(
  name: "Crop Science",
  description: "",
  group_picture: "crop_yxkq73",
  subject_id: 6,
  user_id: rand(1..15)
)
Group.create!(
  name: "Horticulture",
  description: "",
  group_picture: "horti_u5bdfd",
  subject_id: 6,
  user_id: rand(1..15)
)
Group.create!(
  name: "Cultural and Historical Geography",
  description: "",
  group_picture: "cultural_jmlbs1",
  subject_id: 7,
  user_id: rand(1..15)
)
Group.create!(
  name: "Geography of Health and Disease",
  description: "",
  group_picture: "hav_rnoz1w",
  subject_id: 7,
  user_id: rand(1..15)
)
Group.create!(
  name: "Cartography",
  description: "",
  group_picture: "cartography_wvn04i",
  subject_id: 7,
  user_id: rand(1..15)
)
Group.create!(
  name: "Organic Chemistry",
  description: "",
  group_picture: "organic_pipieg",
  subject_id: 8,
  user_id: rand(1..15)
)
Group.create!(
  name: "Nanotechnology",
  description: "",
  group_picture: "nano_tovtlh",
  subject_id: 8,
  user_id: rand(1..15)
)
Group.create!(
  name: "Biochemistry",
  description: "",
  group_picture: "biochemistry_dkznu7",
  subject_id: 8,
  user_id: rand(1..15)
)
Group.create!(
  name: "Microeconomics",
  description: "",
  group_picture: "micro_yscivf",
  subject_id: 9,
  user_id: rand(1..15)
)
Group.create!(
  name: "Macroeconomics",
  description: "",
  group_picture: "macroeconomics_fkn8eh",
  subject_id: 9,
  user_id: rand(1..15)
)
Group.create!(
  name: "Industrial Organization",
  description: "",
  group_picture: "IndustrialOrganization.jpeg",
  subject_id: 9,
  user_id: rand(1..15)
)
Group.create!(
  name: "Industrial Engineering",
  description: "",
  group_picture: "industrialOrganization_enifv3",
  subject_id: 10,
  user_id: rand(1..15)
)
Group.create!(
  name: "Mechatronics Engineering",
  description: "",
  group_picture: "mecha_f6sgkb",
  subject_id: 10,
  user_id: rand(1..15)
)
Group.create!(
  name: "Civil Engineering",
  description: "",
  group_picture: "Civil-engineers_gsc0bd",
  subject_id: 10,
  user_id: rand(1..15)
)
Group.create!(
  name: "Music",
  description: "",
  group_picture: "music_raelne",
  subject_id: 11,
  user_id: rand(1..15)
)
Group.create!(
  name: "Art History",
  description: "",
  group_picture: "art_wsv3rt",
  subject_id: 11,
  user_id: rand(1..15)
)
Group.create!(
  name: "Digital Arts",
  description: "",
  group_picture: "digital_zndbdp",
  subject_id: 11,
  user_id: rand(1..15)
)

Group.create!(
  name: "Urban Planning and Design",
  description: "",
  group_picture: "urban_whfnhg",
  subject_id: 12,
  user_id: rand(1..15)
)
Group.create!(
  name: "Interior Architecture and Design",
  description: "",
  group_picture: "interior_pwkkay",
  subject_id: 12,
  user_id: rand(1..15)
)
Group.create!(
  name: "Architectural History",
  description: "",
  group_picture: "Babel_bzvx6y",
  subject_id: 12,
  user_id: rand(1..15)
)
Group.create!(
  name: "Motivation and Engagement",
  description: "",
  group_picture: "motivation_zhucaw",
  subject_id: 13,
  user_id: rand(1..15)
)
Group.create!(
  name: "Critical Pedagogy",
  description: "",
  group_picture: "critical.jpg",
  subject_id: 13,
  user_id: rand(1..15)
)
Group.create!(
  name: "Reflective Practice",
  description: "",
  group_picture: "reflective_rue3tg",
  subject_id: 13,
  user_id: rand(1..15)
)
Group.create!(
  name: "Human Resource Management",
  description: "",
  group_picture: "hr_icgmiy",
  subject_id: 14,
  user_id: rand(1..15)
)
Group.create!(
  name: "Marketing",
  description: "",
  group_picture: "marketing_j2hezt",
  subject_id: 14,
  user_id: rand(1..15)
)
Group.create!(
  name: "Management Principles",
  description: "",
  group_picture: "principles_m9gt7i",
  subject_id: 14,
  user_id: rand(1..15)
)
Group.create!(
  name: "Criminal Law",
  description: "",
  group_picture: "criminallaw_hjlml2",
  subject_id: 15,
  user_id: rand(1..15)
)
Group.create!(
  name: "Civil Law",
  description: "",
  group_picture: "civillaw_zlldsg",
  subject_id: 15,
  user_id: rand(1..15)
)
Group.create!(
  name: "Administrative Law",
  description: "",
  group_picture: "admin_nyagir",
  subject_id: 15,
  user_id: rand(1..15)
)
slovenian_group = Group.create!(
  name: "Slovenian",
  description: "",
  group_picture: "slovenian_d0bea6",
  subject_id: 16,
  user_id: rand(1..15)
)
ukranian_group = Group.create!(
  name: "Ukranian",
  description: "",
  group_picture: "Ukrainian_juyvv3",
  subject_id: 16,
  user_id: rand(1..15)
)
Group.create!(
  name: "Swedish",
  description: "",
  group_picture: "swedish.jpg_tw708e",
  subject_id: 16,
  user_id: rand(1..15)
)
Group.create!(
  name: "Literature",
  description: "",
  group_picture: "litreture_rqnc7e",
  subject_id: 17,
  user_id: rand(1..15)
)
Group.create!(
  name: "History",
  description: "",
  group_picture: "history_rb1izm",
  subject_id: 17,
  user_id: rand(1..15)
)
Group.create!(
  name: "Archaeology",
  description: "",
  group_picture: "archeology_pu6lcb",
  subject_id: 17,
  user_id: rand(1..15)
)
Group.create!(
  name: "Cybersecurity",
  description: "",
  group_picture: "cybersecurity_trq6e4",
  subject_id: 18,
  user_id: rand(1..15)
)
Group.create!(
  name: "Software Engineering",
  description: "",
  group_picture: "sofware_nsziqo",
  subject_id: 18,
  user_id: rand(1..15)
)
Group.create!(
  name: "Artificial Intelligence",
  description: "",
  group_picture: "artificial_tmlzle",
  subject_id: 18,
  user_id: rand(1..15)
)
Group.create!(
  name: "Human Rights Studies",
  description: "human_rights",
  group_picture: "human_rights_omo05q",
  subject_id: 19,
  user_id: rand(1..15)
)
Group.create!(
  name: "Sociology",
  description: "",
  group_picture: "socilogie_rsffu5",
  subject_id: 19,
  user_id: rand(1..15)
)
Group.create!(
  name: "Anthropology",
  description: "Anthropology",
  group_picture: "Anthropology_nstyz0",
  subject_id: 19,
  user_id: rand(1..15)
)
Group.create!(
  name: "Epistemology",
  description: "",
  group_picture: "Epistemology_k6m897",
  subject_id: 20,
  user_id: rand(1..15)
)
Group.create!(
  name: "Metaphysics",
  description: "",
  group_picture: "meta_dgu2xi",
  subject_id: 20,
  user_id: rand(1..15)
)
Group.create!(
  name: "Philosophy of Science",
  description: "Welcome to most supportive group.",
  group_picture: "philo_bacown",
  subject_id: 20,
  user_id: rand(1..15)
)

100.times do
  Membership.create!(
    group_id: Group.pluck(:id).sample,
    user_id: User.pluck(:id).sample,
    created_at: Time.now,
    updated_at: Time.now
  )
end

Session.create!(
  name: "Ecology- Carbon Cycling & Sequestration.",
  description: "I have an exam next week, i want somebody to study Carbon Cycling & Sequestration ",
  time: "09.07.2023 19:20",
  group: ecology_group,
  user: ozge,
  address: "Rigaer Strasse 5, Berlin"
)
Session.create!(
  name: "Microbiology - Viruses :)",
  description: "I'm looking for 3 people to study Viruses",
  time: "09.07.2023 15:20",
  group: microbiology_group,
  user: ozge,
  address: "Pflüger Strasse 3, Berlin"
)

Session.create!(
  name: "Lets practice our Slovenian ! :)",
  description: "Anybody who wants to practice Slovenian welcome to join me !:)",
  time: "10.07.2023 16:20",
  group: slovenian_group,
  user: ozge,
  address: "Rudi-Dutschke-Straße 26, Berlin"
)

Session.create!(
  name: "Learn Ukrainian & Language exchange:)",
  description: " I'm new in Berlin and I want to learn German. If you want to learn Ukrainian , lets exchange the languages!:)",
  time: "09.07.2023 13:20",
  group: ukranian_group,
  user: ozge,
  address: "karl marx allee 31, Berlin"
)

Attendance.create!(
  user: ulrich,
  session_id: 1
)
Attendance.create!(
  user: ozge,
  session_id: 2
)
Attendance.create!(
  user: ozge,
  session_id: 3
)
Attendance.create!(
  user: ozge,
  session_id: 1
)
Attendance.create!(
  user: ozge,
  session_id: 4
)
Attendance.create!(
  user_id: 1,
  session_id: 4
)
Attendance.create!(
  user_id: 1,
  session_id: 2
)
