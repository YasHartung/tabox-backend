class Project < ApplicationRecord

    has_many :sessions
    has_many :tasks
    has_many :taskboards
    
    belongs_to :user
end
