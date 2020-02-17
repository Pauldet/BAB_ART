class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :number_of_days
      t.integer :total_price
      t.date :start_date
      t.date :end_date
      t.text :review
      t.integer :rating
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :piece_of_art, null: false, foreign_key: true

      t.timestamps
    end
  end
end
