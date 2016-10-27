class Location < ApplicationRecord
  belongs_to :squad
  validates :latitude, presence: true
  validates :longitude, presence: true
end
