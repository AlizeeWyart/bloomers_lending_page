class Price < ApplicationRecord
  belongs_to :drink
  belongs_to :place
  # VALIDATION
  validates :cost, presence: true
  validates :drink_id, uniqueness: {scope: :place_id}
end
