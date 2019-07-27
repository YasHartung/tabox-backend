class AddCommentToSessions < ActiveRecord::Migration[5.2]
  def change
    add_column :sessions, :comment, :string 
  end
end
