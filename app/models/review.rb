class Review < ApplicationRecord
  belongs_to :space
  belongs_to :booking
  validates :content, presence: true
end
