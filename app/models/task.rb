class Task < ApplicationRecord
   

    has_many :task_task_boards
    has_many :taskboards, through: :task_task_boards

    belongs_to :user
    belongs_to :project, optional: true

end
