class RemoveDateFromSessions < ActiveRecord::Migration[5.2]
  def change
    remove_column :sessions, :date
  end
end
