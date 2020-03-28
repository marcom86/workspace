class Space < ApplicationRecord
  validates :address, presence: true, uniqueness: true
  validates :city, presence: true
  validates :postcode, presence: true
  validates :number_of_people, presence: true, numericality: { only_integer: true }
  validates :daily_price, presence: true, numericality: true
  validates :description, presence: true

  has_one_attached :photo
  # delete all the bookings when a space is deleted
  has_many :bookings, dependent: :destroy
end
