class AddGeolocationToSin < ActiveRecord::Migration
  def change
    add_column :sins, :lat, :float
    add_column :sins, :lon, :float
  end
end
