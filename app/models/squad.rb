class Squad < ApplicationRecord
  has_many :users
  has_many :locations
  validates :name, uniqueness: true
end
