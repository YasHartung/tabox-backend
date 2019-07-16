class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :tabs
      t.datetime :date
      t.string :comment
      t.integer :client_id

      t.timestamps
    end
  end
end
