class CreateTags < ActiveRecord::Migration
	def change
		create_table :tags do |t|
			t.string :name
			t.string :value
			t.references :service

			t.timestamps
		end
		add_index :tags, :service_id
	end
end
