class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.datetime :date
      t.float :duration
      t.string :comment
      t.boolean :manual
      t.integer :client_id
      t.integer :user_id

      t.timestamps
    end
  end
end
