class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :clients, :tasks, :logs, :taskboards
end
