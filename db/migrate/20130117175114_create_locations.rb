class CreateLocations < ActiveRecord::Migration
	def change
		create_table :locations do |t|
    	#####
    	# https://developers.google.com/maps/articles/phpsqlajax_v3
    	#####
    	t.float :lat, :precision => 10, :scale => 6
    	t.float :lng, :precision => 10, :scale => 6

    	t.timestamps
    end
end
end
