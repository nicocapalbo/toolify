class Booking < ApplicationRecord
  belongs_to :tool
  belongs_to :user
  # validates :start_date, :finish_date, presence: true
  validates :start_date, :finish_date, presence: true
  validate :end_date_after_start_date
  validate :start_date_after_today

  private

  def end_date_after_start_date
    return if finish_date.blank? || start_date.blank?

    if finish_date < start_date
      errors.add(:finish_date, "must be after the start date")
    end
  end

  def start_date_after_today
    return if finish_date.blank? || start_date.blank?

    if start_date < Date.today
      errors.add(:start_date, "must be after today")
    end
  end
end
