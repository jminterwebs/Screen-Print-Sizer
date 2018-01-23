class Garment < ApplicationRecord
  has_many :garmentsLocation
  has_many :locations, through: :garmentsLocation


  validates_presence_of :name, :style_code


end
