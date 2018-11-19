class Space < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :capacity, numericality: { only_integer: true }

  has_many :reviews, dependent: :destroy
end
