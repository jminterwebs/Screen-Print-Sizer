class Garment < ApplicationRecord
  validates_presence_of :name, :style_code
end
