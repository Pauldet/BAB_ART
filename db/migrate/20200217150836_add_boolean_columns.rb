class AddBooleanColumns < ActiveRecord::Migration[6.0]
  def change
  add_column :piece_of_arts, :available, :boolean
  add_column :piece_of_arts, :available_for_sale, :boolean

  end
end
