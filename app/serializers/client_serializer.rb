class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :user_id, :sessions, :logs, :tasks
end
