class AddDescriptionToSessions < ActiveRecord::Migration[7.0]
  def change
    add_column :sessions, :description, :string
  end
end
