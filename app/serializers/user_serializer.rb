class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :clients, :logs, :taskboards

  has_many :taskboards
  has_many :clients
  
  class TaskboardSerializer < ActiveModel::Serializer
    attributes :id, :name, :client_id, :user_id, :tasks
  end

    def clients
      customized_clients = []

      object.clients.each do |client|

        custom_client = client.attributes

        custom_client[:sessions] = client.sessions


        customized_clients.push(custom_client)
      end
      return customized_clients
    end

  
end
