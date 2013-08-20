class AddAddressToSins < ActiveRecord::Migration
  def change
    add_column :sins, :address, :string
  end
end
