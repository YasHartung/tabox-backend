class Client < ApplicationRecord

    has_many :sessions
    has_many :logs
    has_many :tasks
    has_many :taskboards
    
    belongs_to :user
end
