class AddCityAndStreetNameToSessions < ActiveRecord::Migration[7.0]
  def change
    add_column :sessions, :city, :string
    add_column :sessions, :street_name, :string
  end
end
