class AddLocationToShops < ActiveRecord::Migration
  def change
    add_column :shops, :location, :string
  end
end
