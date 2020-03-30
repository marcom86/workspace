class Space < ApplicationRecord
  validates :address, presence: true, uniqueness: true
  validates :city, presence: true
  validates :postcode, presence: true
  validates :number_of_people, presence: true, numericality: { only_integer: true }
  validates :daily_price, presence: true, numericality: true
  validates :description, presence: true

  mount_uploader :photo, PhotoUploader
  # delete all the bookings when a space is deleted
  has_many :bookings, dependent: :destroy

  def full_address
    [address, city, postcode].compact.join(',')
  end

  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_address?
end
