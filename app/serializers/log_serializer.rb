class LogSerializer < ActiveModel::Serializer
  attributes :id, :date, :duration, :comment, :manual, :client_id, :user_id
end
