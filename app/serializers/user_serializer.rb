class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :clients, :logs, :taskboards

  has_many :taskboards
  
  class TaskboardSerializer < ActiveModel::Serializer
    attributes :id, :name, :client_id, :user_id, :tasks
  end
  
end
