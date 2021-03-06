class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space
  monetize :amount_cents
  validates :check_in, presence: true
  validates :check_out, presence: true
  validate :validate_today_greater_check_in
  validate :validate_check_out_greater_check_in
  validate :validate_other_booking_overlap

  scope :overlapping, ->(from, to) {
    where(
      "(check_in, check_out) OVERLAPS (?, ?)", from, to
    )
  }


  def period
    check_in..check_out
  end

  private

  def validate_today_greater_check_in
    if check_in.present? && check_out.present?
      is_greater = DateTime.current.to_date > check_in
      errors.add(:check_in, "cannot be in the past") if is_greater
    end
  end

  def validate_check_out_greater_check_in
    if check_in.present? && check_out.present?
      is_greater = check_in > check_out
      errors.add(:check_in, "cannot be greater than check-out") if is_greater
    end
  end

  def validate_other_booking_overlap
    other_bookings = Booking.where(state: "paid", space_id: self.space_id)
    is_overlapping = other_bookings.any? do |other_booking|
      period.overlaps?(other_booking.period)
    end
    errors[:base] << "Space not available in this period!" if is_overlapping
  end
end
