class GarmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :style_code

  has_many :locations
end
