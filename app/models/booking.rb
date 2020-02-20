class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :piece_of_art
  validates :start_date, presence: true, allow_blank: false
  validates :end_date, presence: true, allow_blank: false
end
