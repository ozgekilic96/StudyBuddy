class CreateInterestedSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :interested_subjects do |t|
      t.references :user, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
