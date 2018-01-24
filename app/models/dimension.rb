class Dimension < ApplicationRecord
  has_many :locationsDimension
  has_many :locations, through: :locationsDimension


  validates_presence_of :height, :width
end
