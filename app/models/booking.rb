class Booking < ApplicationRecord
  validates :start_date, presence: true
  validates :end_date, presence: true
  has_one_attached :photo
  belongs_to :game
  belongs_to :user
end
