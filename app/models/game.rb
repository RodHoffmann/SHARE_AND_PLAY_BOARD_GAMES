class Game < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :category, presence: true
  validates :number_players, presence: true
  validates :day_price, presence: true

  has_one_attached :image

  has_many :bookings, dependent: :destroy
  has_many_attached :images
  belongs_to :user

  has_many :notifications, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_name_and_category,
                  against: %i[name category],
                  using: {
                    tsearch: { prefix: true } # <-- now `superman batm` will return something!
                  }
end
