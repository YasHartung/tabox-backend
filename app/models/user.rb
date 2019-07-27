class User < ApplicationRecord


    has_many :projects
    has_many :taskboards
    has_many :tasks

end
