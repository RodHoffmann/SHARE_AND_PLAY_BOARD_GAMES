class Game < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :category, presence: true
  validates :number_players, presence: true
  validates :day_price, presence: true
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  belongs_to :user
end
