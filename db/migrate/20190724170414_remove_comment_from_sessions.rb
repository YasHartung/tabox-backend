class RemoveCommentFromSessions < ActiveRecord::Migration[5.2]
  def change
    remove_column :sessions, :comment
  end
end
