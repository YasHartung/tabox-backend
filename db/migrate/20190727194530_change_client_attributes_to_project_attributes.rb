class ChangeClientAttributesToProjectAttributes < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :email
    remove_column :projects, :phone

    rename_column :sessions, :client_id, :project_idrails 

    rename_column :taskboards, :client_id, :project_id

    rename_column :tasks, :client_id, :project_id
    remove_column :tasks, :target_date
  end
end
