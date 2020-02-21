class PieceOfArt < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, :category, :daily_price, :artist_name, presence: true

  include PgSearch::Model

  pg_search_scope :search_by_name_and_artist_name,
    against: [ :name, :artist_name ],
    using: {
      tsearch: { prefix: true }
    }

  # def check_for_availability(date)
  #   TODO
  # end
end
