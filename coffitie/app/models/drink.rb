class Drink < ApplicationRecord
  has_many :prices
  has_many :places, through: :prices
  # VALIDATION
  validates :name, presence: true, uniqueness: true
end
