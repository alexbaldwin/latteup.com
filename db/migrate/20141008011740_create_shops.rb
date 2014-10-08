class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.belongs_to :city, null: false, index: true
      t.string :name, null: false
      t.string :tagline, default: ""
      t.string :seating, default: ""
      t.string :now_playing, default: ""
      t.string :noise_level, default: ""
      t.string :wifi, default: ""
      t.string :bathroom, default: ""
      t.string :attire, default: ""
      t.text :prose, default: ""
    end
  end
end
