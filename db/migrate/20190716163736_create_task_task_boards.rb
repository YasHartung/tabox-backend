class CreateTaskTaskBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :task_task_boards do |t|
      t.integer :task_board_id
      t.integer :task_id
     

      t.timestamps
    end
  end
end
