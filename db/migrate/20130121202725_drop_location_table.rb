class DropLocationTable < ActiveRecord::Migration
  def up
    remove_column :services, :location_id
    drop_table :locations
  end

  def down
    add_column :services, :location_id
    
    create_table :locations do |t|
    	t.float :lat, :precision => 10, :scale => 6
    	t.float :lng, :precision => 10, :scale => 6

    	t.timestamps
    end
  end
end
