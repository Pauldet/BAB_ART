class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :piece_of_art
end
