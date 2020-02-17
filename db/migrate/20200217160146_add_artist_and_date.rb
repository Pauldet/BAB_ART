class AddArtistAndDate < ActiveRecord::Migration[6.0]
  def change
    add_column :piece_of_arts, :artist_name, :string
    add_column :piece_of_arts, :creation_date, :integer
  end
end
