class Location < ApplicationRecord
  has_many :garmentsLocation
  has_many :garments, through: :garmentsLocation

  has_many :locationsDimension
  has_many :dimensions, through: :locationsDimension


  validates_presence_of :location_code, :name
end
