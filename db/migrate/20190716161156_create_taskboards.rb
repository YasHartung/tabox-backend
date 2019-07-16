class CreateTaskboards < ActiveRecord::Migration[5.2]
  def change
    create_table :taskboards do |t|
      t.string :name
      t.integer :client_id, {default: nil}
      t.integer :user_id

      t.timestamps
    end
  end
end
