class SnakeSerializer < ActiveModel::Serializer
  attributes :id, :name, :sci_name, :picture, :venomous, :max_length, :diet
end
