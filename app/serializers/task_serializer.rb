class TaskSerializer < ActiveModel::Serializer
  attributes :id, :content, :target_date, :project_id, :user_id
end
