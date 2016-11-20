class Place < ApplicationRecord
  has_many :prices
  has_many :drinks, through: :prices
  # VALIDATION
  validates :name, presence: true
  validates :address, presence: true
  validates :name, uniqueness: true
end
