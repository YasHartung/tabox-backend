class User < ApplicationRecord


    has_many :clients
    has_many :taskboards
    has_many :logs
    has_many :tasks

end
