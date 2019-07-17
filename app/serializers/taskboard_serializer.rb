class TaskboardSerializer < ActiveModel::Serializer
  attributes :id, :name, :client_id, :user_id
end
