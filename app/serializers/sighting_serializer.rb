class SightingSerializer < ActiveModel::Serializer
  attributes :id, :comment, :location, :data, :size
end
