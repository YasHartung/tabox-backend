class SessionSerializer < ActiveModel::Serializer
  attributes :id, :tabs_array, :date, :comment, :client_id

  def tabs_array
    tabs_array = Session.tabs.split(',')
    return tabs_array
  end
end
