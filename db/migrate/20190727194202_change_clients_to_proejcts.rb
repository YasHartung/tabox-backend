class ChangeClientsToProejcts < ActiveRecord::Migration[5.2]
    def change
      rename_table :clients, :projects
    end
end
