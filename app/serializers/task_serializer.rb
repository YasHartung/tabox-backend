class TaskSerializer < ActiveModel::Serializer
  attributes :id, :content, :target_date, :client_id, :user_id
end
