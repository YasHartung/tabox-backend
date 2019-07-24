class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :user_id, :sessions

  has_many :sessions
  
  class SessionSerializer < ActiveModel::Serializer
    attributes :id, :tabs, :client_id, :created_at
  
    
  end
end
