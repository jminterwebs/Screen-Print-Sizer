class Dimension < ApplicationRecord
  has_many :locations


  validates_presence_of :height, :width
end
