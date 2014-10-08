class AddSlugToShop < ActiveRecord::Migration
  def change
    add_column :shops, :slug, :string
    add_index :shops, :slug, unique: true
  end
end
