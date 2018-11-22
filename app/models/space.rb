class Space < ApplicationRecord

  # include Pgsearch


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true

  # validates :description, presence: true
  validates :availability, presence: true, inclusion: { in: [true, false] }
  validates :capacity, numericality: { only_integer: true }

  mount_uploader :photo, PhotoUploader

  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: :destroy
  belongs_to :user

  # pg_search_scope :search_by_title,
  #   against: [:name],
  #   using: {
  #     nsearch: { prefix: true}
  #   }

end
