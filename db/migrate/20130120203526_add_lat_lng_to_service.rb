class AddLatLngToService < ActiveRecord::Migration
  def up
    add_column :services, :lat, :float, :precision => 10, :scale => 6
    add_column :services, :lng, :float, :precision => 10, :scale => 6
  end
  
  def down
    remove_column :services, :lat
    remove_column :services, :lng
  end
end
