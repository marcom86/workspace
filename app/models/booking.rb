class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space
  validate :validate_check_out_greater_check_in
  validate :validate_other_booking_overlap

  def period
    check_in..check_out
  end

  private

  def validate_check_out_greater_check_in
    is_greater = check_in > check_out
    errors.add(:greaten_than_check_in) if is_greater
  end

  def validate_other_booking_overlap
    other_bookings = Booking.where(space_id: self.space_id)
    is_overlapping = other_bookings.any? do |other_booking|
      period.overlaps?(other_booking.period)
    end
    errors.add(:overlaps_with_other) if is_overlapping
  end
end
