class Taskboard < ApplicationRecord
   

    has_many :task_task_boards
    has_many :tasks, through: :task_task_boards

    belongs_to :user
    belongs_to :client
end
