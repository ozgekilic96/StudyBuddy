class AddStatusToAttendances < ActiveRecord::Migration[7.0]
  def change
    add_column :attendances, :status, :string, default: "Pending", null: false
  end
end
