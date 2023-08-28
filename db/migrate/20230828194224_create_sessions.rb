class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.datetime :time, null: false
      t.string :name, null: false
      t.string :address, null: false
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
