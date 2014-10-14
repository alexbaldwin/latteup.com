class AddCurators < ActiveRecord::Migration
  def change
    create_table :curators do |t|
      t.string :name
      t.string :title
      t.string :twitter
      t.string :avatar
 
      t.timestamps
    end
  end
end
