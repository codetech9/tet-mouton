class Booking < ApplicationRecord
  belongs_to :land
  belongs_to :farmer, class_name: "User"
  validate :starts_at, :ends_at, presence: true
end
