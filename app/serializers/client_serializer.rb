class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :user_id, :sessions, :logs, :taskboards

  class TaskboardSerializer < ActiveModel::Serializer
    attributes :id, :name, :client_id, :user_id, :tasks
  end
end
