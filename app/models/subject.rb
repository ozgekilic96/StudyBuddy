class Subject < ApplicationRecord
  has_many :interested_subjects, dependent: :destroy
  has_many :groups, dependent: :destroy
  validates :name, presence: true, uniqueness: true

  def icon_creator
    case self.name
    when "Physics"
      "physics_gqr2bu.png"
    when "Biology"
      "biology_kymetk.png"
    when "Psychology"
      "psychology_vyzho3.png"
    when "Math"
      "math_sv87do.png"
    when "Sports"
      "sports_vvjzst"
    when "Agriculture"
      "agriculture_uhfzr5"
    when "Geography"
      "geography_h7fkrp"
    when "Chemistry"
      "chemistry_gp9qkk"
    when "Economics"
      "economics_usij7d"
    when "Engineering"
      "engineering_i8tuqn"
    when "Art"
      "art_daoske"
    when "Architecture"
      "architecture_cl3j7l"
    when "Pedagogy"
      "pedagogy_mlhs5a"
    when "Business Administration"
      "businessadministration_oszfic"
    when "Law"
      "law_zr6zkk"
    when "Languages"
      "languages_fal5ap"
    when "Humanities"
      "humanities_lhvbjr"
    when "Computer Science"
      "computerscience_zgh5nr"
    when "Social studies"
      "socialstudies_u1ztrt"
    when "Philosophy"
      "philosophy_qwnwpp"
    end
  end
end
