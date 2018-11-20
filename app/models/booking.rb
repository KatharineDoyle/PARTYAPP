class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space

  validates :date, presence: true
  validates :theme, presence: true
  validates :user_id, presence: true
  validates_uniqueness_of :user_id, :scope => [:space_id]
end
