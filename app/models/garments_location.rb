class GarmentsLocation < ApplicationRecord
  belongs_to :garment
  belongs_to :location
end
