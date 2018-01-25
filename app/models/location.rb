class Location < ApplicationRecord
  has_many :garmentsLocation
  has_many :garments, through: :garmentsLocation

  belongs_to :dimension, optional: true

  validates_presence_of :location_code, :name
end
