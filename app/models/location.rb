class Location < ApplicationRecord
  validates_presence_of :location_code, :name
end
