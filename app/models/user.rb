class User < ApplicationRecord
  belongs_to :squad, optional: true
  has_secure_password
  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true
end
