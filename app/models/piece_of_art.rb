class PieceOfArt < ApplicationRecord
  belongs_to :user
  has_many :bookings

  # def check_for_availability(date)
  #   TODO
  # end
end
