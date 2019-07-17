class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :user_id
end
