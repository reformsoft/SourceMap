class CreateServiceTagJoinTable < ActiveRecord::Migration
  def up
  	create_table :services_tags, :id => false do |t|
  		t.integer :service_id
  		t.integer :tag_id
  	end
  end

  def down
  	drop_table :services_tags
  end
end
