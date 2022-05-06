class Land < ApplicationRecord
  has_many :bookings
  belongs_to :owner, class_name: "User"

  validates :location, :area, :price, :description, presence: true
  validates :price, numericality: { only_integer: true }
end
