# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Faker::Config.locale = 'de'
giovane = User.create!(
  first_name: "Giovane",
  last_name: "Nery",
  email: "giovane.nery@hotmail.com",
  password: "123456",
  address: "Berlin",
  picture: "Giovane_hclkxc",
  age: 24
)

ozge = User.create!(
  first_name: "Ozge",
  last_name: "Kilic",
  email: "ozgeklc096@gmail.com",
  password: "12345678",
  address: "Berlin",
  picture: "ozge_vvmcfy",
  age: 27
)

ulrich = User.create!(
  first_name: "Ulrich",
  last_name: "Thofehrn",
  email: "welfito@icloud.com",
  password: "123456",
  address: "Berlin",
  picture: "ulrich_wb7zuy",
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
  group_picture: "atomic_nei5ya",
  subject_id: 1,
  user_id: rand(1..15)
)

Group.create!(
  name: "Optics",
  description: "exploring the fundamental principles behind vision, lasers, and optical technologies",
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
  description: "Microbiology is the scientific study of microscopic organisms, such as bacteria, viruses, and fungi, delving into their biology and impact on health and the environment",
  group_picture: "microbiology_smrx0f",
  subject_id: 2,
  user_id: rand(1..15)
)
ecology_group = Group.create!(
  name: "Ecology",
  description: "Relationships between organisms and their environment, examining the interactions that shape ecosystems and biodiversity.",
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
  description: "Diagnosis, and treatment of mental and emotional disorders",
  group_picture: "clinic_vjdiv8",
  subject_id: 3,
  user_id: rand(1..15)
)
Group.create!(
  name: "Abnormal psychology",
  description: "Atypical behaviors and mental disorders to understand their causes and develop effective treatments.",
  group_picture: "abnormal_snvveo",
  subject_id: 3,
  user_id: rand(1..15)
)
Group.create!(
  name: "Schizophrenia",
  description: "Severe mental disorder characterized by distorted thinking, emotions, and perceptions",
  group_picture: "schizophrenia_clbhhc",
  subject_id: 3,
  user_id: rand(1..15)
)
Group.create!(
  name: "Statistics",
  description: "Analysis, and interpretation of data to make informed decisions in various fields",
  group_picture: "statistics_luzzar",
  subject_id: 4,
  user_id: rand(1..15)
)
Group.create!(
  name: "Algebra",
  description: "mathematical equations and relationships between variables",
  group_picture: "algo_jbdbdo",
  subject_id: 4,
  user_id: rand(1..15)
)
Group.create!(
  name: "Calculus",
  description: "Rates of change and accumulation through mathematical analysis",
  group_picture: "calculus_ejlnqt",
  subject_id: 4,
  user_id: rand(1..15)
)
Group.create!(
  name: "Anatomy and Physiology",
  description: " structure and function of the human body",
  group_picture: "anatomy_iwj35z",
  subject_id: 5,
  user_id: rand(1..15)
)
Group.create!(
  name: "Sports medicine",
  description: "Treatment and prevention of sports-related injuries and the optimization of athletic performance",
  group_picture: "medicine_uo0uwx",
  subject_id: 5,
  user_id: rand(1..15)
)
Group.create!(
  name: "Sports Nutrition",
  description: "Sports Nutrition in university studies the science of nutrition and its application to enhance athletic
  performance and recovery",
  group_picture: "Nutrition_ghu9rs",
  subject_id: 5,
  user_id: rand(1..15)
)
Group.create!(
  name: "Plant Pathology",
  description: "diseases and disorders that affect plants and crops, aiming to protect agricultural resources",
  group_picture: "pathology_pcbtsl",
  subject_id: 6,
  user_id: rand(1..15)
)
Group.create!(
  name: "Crop Science",
  description: "Cultivation, breeding, and management of crops for sustainable agricultural production",
  group_picture: "crop_yxkq73",
  subject_id: 6,
  user_id: rand(1..15)
)
Group.create!(
  name: "Horticulture",
  description: "Art of cultivating fruits, vegetables, and ornamental plants",
  group_picture: "horti_u5bdfd",
  subject_id: 6,
  user_id: rand(1..15)
)
Group.create!(
  name: "Cultural and Historical Geography",
  description: "Spatial dynamics of societies, exploring how geography shapes cultures and histories",
  group_picture: "cultural_jmlbs1",
  subject_id: 7,
  user_id: rand(1..15)
)
Group.create!(
  name: "Geography of Health and Disease",
  description: "Spatial distribution and factors influencing health outcomes and disease patterns worldwide",
  group_picture: "hav_rnoz1w",
  subject_id: 7,
  user_id: rand(1..15)
)
Group.create!(
  name: "Cartography",
  description: "Map making and the representation of geographical information",
  group_picture: "cartography_wvn04i",
  subject_id: 7,
  user_id: rand(1..15)
)
Group.create!(
  name: "Organic Chemistry",
  description: "Focuses on the structure, synthesis, and reactions of carbon-based compounds",
  group_picture: "organic_pipieg",
  subject_id: 8,
  user_id: rand(1..15)
)
Group.create!(
  name: "Nanotechnology",
  description: "manipulation and application of materials at the nanoscale, enabling innovations in various fields",
  group_picture: "nano_tovtlh",
  subject_id: 8,
  user_id: rand(1..15)
)
Group.create!(
  name: "Biochemistry",
  description: "Chemical processes and molecules within living organisms",
  group_picture: "biochemistry_dkznu7",
  subject_id: 8,
  user_id: rand(1..15)
)
Group.create!(
  name: "Microeconomics",
  description: "Analyzes the behavior of individual markets, consumers, and firms in the economy",
  group_picture: "micro_yscivf",
  subject_id: 9,
  user_id: rand(1..15)
)
Group.create!(
  name: "Macroeconomics",
  description: "The economy as a whole, examining factors like inflation, unemployment, and economic growth",
  group_picture: "macroeconomics_fkn8eh",
  subject_id: 9,
  user_id: rand(1..15)
)
Group.create!(
  name: "Industrial Organization",
  description: "Explores how firms and industries function, including market structures, competition, and strategic
  behavior",
  group_picture: "industrialOrganization_enifv3",
  subject_id: 9,
  user_id: rand(1..15)
)
Group.create!(
  name: "Industrial Engineering",
  description: "Optimizing processes, systems, and resources for efficient production and management",
  group_picture: "industrial_rkzvzl",
  subject_id: 10,
  user_id: rand(1..15)
)
Group.create!(
  name: "Mechatronics Engineering",
  description: "Integrates mechanical, electrical, and computer engineering to design and control complex systems",
  group_picture: "mecha_f6sgkb",
  subject_id: 10,
  user_id: rand(1..15)
)
Group.create!(
  name: "Civil Engineering",
  description: "Involves designing and building infrastructure like bridges, roads, and buildings for society's benefit",
  group_picture: "Civil-engineers_gsc0bd",
  subject_id: 10,
  user_id: rand(1..15)
)
Group.create!(
  name: "Music",
  description: "Explores the art, theory, and history of musical expression across cultures and genres",
  group_picture: "music_raelne",
  subject_id: 11,
  user_id: rand(1..15)
)
Group.create!(
  name: "Art History",
  description: "The evolution of visual art, analyzing its cultural and historical context",
  group_picture: "art_wsv3rt",
  subject_id: 11,
  user_id: rand(1..15)
)
Group.create!(
  name: "Digital Arts",
  description: "Explores the creative use of technology for artistic expression",
  group_picture: "digital_zndbdp",
  subject_id: 11,
  user_id: rand(1..15)
)

Group.create!(
  name: "Urban Planning and Design",
  description: "Shaping cities and communities for sustainable development and livability",
  group_picture: "urban_whfnhg",
  subject_id: 12,
  user_id: rand(1..15)
)
Group.create!(
  name: "Interior Architecture and Design",
  description: "Creating functional and aesthetically pleasing interior spaces",
  group_picture: "interior_pwkkay",
  subject_id: 12,
  user_id: rand(1..15)
)
Group.create!(
  name: "Architectural History",
  description: "The evolution of architectural styles, structures, and their cultural significance",
  group_picture: "Babel_bzvx6y",
  subject_id: 12,
  user_id: rand(1..15)
)
Group.create!(
  name: "Motivation and Engagement",
  description: "Psychological and educational factors that drive human behavior and participation",
  group_picture: "motivation_zhucaw",
  subject_id: 13,
  user_id: rand(1..15)
)
Group.create!(
  name: "Critical Pedagogy",
  description: "Educational theories and practices aimed at fostering social justice and critical thinking in teaching and learning",
  group_picture: "critical_wedjze",
  subject_id: 13,
  user_id: rand(1..15)
)
Group.create!(
  name: "Reflective Practice",
  description: "Self-awareness and critical thinking for improving professional skills and decision-making",
  group_picture: "reflective_rue3tg",
  subject_id: 13,
  user_id: rand(1..15)
)
Group.create!(
  name: "Human Resource Management",
  description: "Strategies and practices for effectively managing and developing an organization's workforce",
  group_picture: "hr_icgmiy",
  subject_id: 14,
  user_id: rand(1..15)
)
Group.create!(
  name: "Marketing",
  description: "Principles and strategies behind promoting products and services to meet consumer needs",
  group_picture: "marketing_j2hezt",
  subject_id: 14,
  user_id: rand(1..15)
)
Group.create!(
  name: "Management Principles",
  description: "Focus on the fundamental concepts and skills required for effective organizational leadership",
  group_picture: "principles_m9gt7i",
  subject_id: 14,
  user_id: rand(1..15)
)
Group.create!(
  name: "Criminal Law",
  description: "examines legal principles and procedures related to the prosecution and defense of criminal offenses",
  group_picture: "criminallaw_hjlml2",
  subject_id: 15,
  user_id: rand(1..15)
)
Group.create!(
  name: "Civil Law",
  description: "covers legal matters related to individuals, contracts, property, and disputes outside of criminal cases",
  group_picture: "civillaw_zlldsg",
  subject_id: 15,
  user_id: rand(1..15)
)
Group.create!(
  name: "Administrative Law",
  description: "Legal framework governing government agencies and their actions",
  group_picture: "admin_nyagir",
  subject_id: 15,
  user_id: rand(1..15)
)
slovenian_group = Group.create!(
  name: "Slovenian",
  description: "Come and learn Slovenian with us",
  group_picture: "slovenian_d0bea6",
  subject_id: 16,
  user_id: rand(1..15)
)
ukranian_group = Group.create!(
  name: "Ukranian",
  description: "Come and learn Ukranian with us",
  group_picture: "Ukrainian_juyvv3",
  subject_id: 16,
  user_id: rand(1..15)
)
Group.create!(
  name: "Swedish",
  description: "Come and learn Swedish with us",
  group_picture: "swedish.jpg_tw708e",
  subject_id: 16,
  user_id: rand(1..15)
)
Group.create!(
  name: "Literature",
  description: "explores the written and artistic expression of human culture through various forms of storytelling and narrative",
  group_picture: "litreture_rqnc7e",
  subject_id: 17,
  user_id: rand(1..15)
)
Group.create!(
  name: "History",
  description: "Examines past events, societies, and cultures to understand the human experience and its impact on the present",
  group_picture: "history_rb1izm",
  subject_id: 17,
  user_id: rand(1..15)
)
Group.create!(
  name: "Archaeology",
  description: "Investigates past human societies through the excavation and analysis of artifacts and sites",
  group_picture: "archeology_pu6lcb",
  subject_id: 17,
  user_id: rand(1..15)
)
Group.create!(
  name: "Cybersecurity",
  description: "Focuses on protecting digital systems and data from cyber threats and attacks",
  group_picture: "cybersecurity_trq6e4",
  subject_id: 18,
  user_id: rand(1..15)
)
Group.create!(
  name: "Software Engineering",
  description: "Involves designing, building, and maintaining software systems to meet real-world needs",
  group_picture: "sofware_nsziqo",
  subject_id: 18,
  user_id: rand(1..15)
)
Group.create!(
  name: "Artificial Intelligence",
  description: "development of computer systems that can perform tasks that typically require human intelligence",
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
  description: "Structure, behavior, and dynamics of human societies, seeking to understand social patterns and change",
  group_picture: "socilogie_rsffu5",
  subject_id: 19,
  user_id: rand(1..15)
)
Group.create!(
  name: "Anthropology",
  description: "Diversity of human cultures, societies, and behavior across time and space",
  group_picture: "Anthropology_nstyz0",
  subject_id: 19,
  user_id: rand(1..15)
)
Group.create!(
  name: "Epistemology",
  description: "Nature of knowledge, examining how we acquire, justify, and understand beliefs and truths",
  group_picture: "Epistemology_k6m897",
  subject_id: 20,
  user_id: rand(1..15)
)
Group.create!(
  name: "Metaphysics",
  description: "Fundamental nature of reality, including concepts like existence, causality, and the nature of being",
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
  user: giovane,
  address: "Pflüger Strasse 3, Berlin"
)

Session.create!(
  name: "Lets practice our Slovenian ! :)",
  description: "Anybody who wants to practice Slovenian welcome to join me !:)",
  time: "10.07.2023 16:20",
  group: slovenian_group,
  user: giovane,
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
Session.create!(
  name: "Learn Ukrainian",
  description: " I'm new in Berlin and I want to learn German. If you want to learn Ukrainian , lets exchange the languages!:)",
  time: "09.07.2023 13:25",
  group_id: 2,
  user: giovane,
  address: "karl marx allee 35, Berlin"
)
Attendance.create!(
  user: ulrich,
  session_id: 5
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
  user: giovane,
  session_id: 4
)
Attendance.create!(
  user: giovane,
  session_id: 2
)
