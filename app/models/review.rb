class Review < ApplicationRecord
  belongs_to :space
  validates :content, presence: true
end
