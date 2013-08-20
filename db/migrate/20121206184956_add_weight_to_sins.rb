class AddWeightToSins < ActiveRecord::Migration
  def change
    add_column :sins, :weight, :integer
  end
end
