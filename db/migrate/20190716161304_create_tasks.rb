class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :content
      t.datetime :target_date
      t.integer :client_id, {default: nil}
      t.integer :user_id

      t.timestamps
    end
  end
end
