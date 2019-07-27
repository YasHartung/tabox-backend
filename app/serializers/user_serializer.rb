class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :projects, :taskboards

  has_many :taskboards
  has_many :projects
  
  class TaskboardSerializer < ActiveModel::Serializer
    attributes :id, :name, :project_id, :user_id, :tasks
  end

    def projects
      customized_projects = []

      object.projects.each do |project|

        custom_project = project.attributes

        custom_project[:sessions] = project.sessions


        customized_projects.push(custom_project)
      end
      return customized_projects
    end

  
end
