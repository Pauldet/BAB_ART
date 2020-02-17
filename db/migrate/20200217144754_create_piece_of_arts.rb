class CreatePieceOfArts < ActiveRecord::Migration[6.0]
  def change
    create_table :piece_of_arts do |t|
      t.string :name
      t.string :category
      t.integer :daily_price
      t.string :description
      t.float :average_rating
      t.integer :buying_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
