class Space < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
<<<<<<< HEAD
  # validates :description, presence: true
=======
>>>>>>> 7b8256685a883defd0d6e20f874a2a73fdb8675e
  validates :availability, presence: true, inclusion: { in: [true, false] }
  validates :capacity, numericality: { only_integer: true }

  mount_uploader :photo, PhotoUploader

  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  belongs_to :user
end
