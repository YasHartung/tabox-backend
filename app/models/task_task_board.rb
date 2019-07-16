class TaskTaskBoard < ApplicationRecord
    

    belongs_to :task
    belongs_to :taskboard
end
