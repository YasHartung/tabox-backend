class TaskboardSerializer < ActiveModel::Serializer
  attributes :id, :name, :project_id, :user_id, :tasks
end
