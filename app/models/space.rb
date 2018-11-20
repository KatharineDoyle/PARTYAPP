class Space < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :description, presence: true
  validates :availability, presence: true, inclusion: { in: [true, false] }
  validates :capacity, numericality: { only_integer: true }

  mount_uploader :photo, PhotoUploader

  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  belongs_to :user
end
