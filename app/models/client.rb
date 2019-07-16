class Client < ApplicationRecord

    has_many :sessions
    has_many :logs
    has_many :tasks
    has_many :task_boards
    
    belongs_to :user
end
