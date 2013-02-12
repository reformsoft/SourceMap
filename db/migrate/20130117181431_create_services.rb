class CreateServices < ActiveRecord::Migration
	def change
		create_table :services do |t|
			t.float :lat, :precision => 10, :scale => 6
			t.float :lng, :precision => 10, :scale => 6

			t.timestamps
		end

	end
end
