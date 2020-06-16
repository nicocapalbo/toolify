class Booking < ApplicationRecord
  belongs_to :tool
  belongs_to :user
  validates :start_date, :finish_date, presence: true
end
