class PieceOfArt < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, :category, :daily_price, :artist_name, presence: true

  # def check_for_availability(date)
  #   TODO
  # end
end
