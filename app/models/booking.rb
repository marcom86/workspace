class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space
  validate :validate_today_greater_check_in
  validate :validate_check_out_greater_check_in
  validate :validate_other_booking_overlap

  def period
    check_in..check_out
  end

  private

  def validate_today_greater_check_in
    is_greater = DateTime.current.to_date > check_in
    errors.add(:check_in, "cannot be in the past") if is_greater
  end

  def validate_check_out_greater_check_in
    is_greater = check_in > check_out
    errors.add(:check_in, "cannot be greater than check-out") if is_greater
  end

  def validate_other_booking_overlap
    other_bookings = Booking.where(space_id: self.space_id)
    is_overlapping = other_bookings.any? do |other_booking|
      period.overlaps?(other_booking.period)
    end
    errors[:base] << "Space not available in this period!" if is_overlapping
  end
end
