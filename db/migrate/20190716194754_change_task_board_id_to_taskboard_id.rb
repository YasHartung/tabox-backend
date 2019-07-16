class ChangeTaskBoardIdToTaskboardId < ActiveRecord::Migration[5.2]
    def change
      rename_column :task_task_boards, :task_board_id, :taskboard_id
    end
end
