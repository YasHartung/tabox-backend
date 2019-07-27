class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :sessions

  has_many :sessions
  
  class SessionSerializer < ActiveModel::Serializer
    attributes :id, :tabs, :comment, :project_id, :created_at
  
    
  end
end
