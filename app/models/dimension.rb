class Dimension < ApplicationRecord
  validates_presence_of :height, :width
end
