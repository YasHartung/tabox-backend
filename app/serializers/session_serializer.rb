class SessionSerializer < ActiveModel::Serializer
  attributes :id, :tabs, :comment, :project_id, :created_at

 
end
