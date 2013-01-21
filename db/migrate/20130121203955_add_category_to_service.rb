class AddCategoryToService < ActiveRecord::Migration
  def up
  	add_column :category_id 
  end

  def down
  	remove_column :category_id
  end
end
