class EventSerializer < ActiveModel::Serializer
  attributes :id, :date, :title, :location, :description
end
