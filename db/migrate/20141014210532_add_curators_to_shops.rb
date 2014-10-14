class AddCuratorsToShops < ActiveRecord::Migration
  def change
    add_column :shops, :writer_id, :integer
    add_column :shops, :photographer_id, :integer
  end
end
