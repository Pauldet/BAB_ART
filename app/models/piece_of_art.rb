class PieceOfArt < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  # def check_for_availability(date)
  #   TODO
  # end
end
