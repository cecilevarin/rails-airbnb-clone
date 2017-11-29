class Gear < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :gear_type, inclusion: { in: %w(board kite),
    message: "%{value} is not a valid gear" }
  validates :daily_price, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
