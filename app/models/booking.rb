class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :spaces

  validates :date, presence: true
  validates :theme, presence: true
end
