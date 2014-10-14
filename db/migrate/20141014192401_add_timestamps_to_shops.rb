class AddTimestampsToShops < ActiveRecord::Migration
  def up
    add_column :shops, :created_at, :datetime
    add_column :shops, :updated_at, :datetime
  end

  def down
    remove_column :shops, :created_at
    remove_column :shops, :updated_at
  end
end
