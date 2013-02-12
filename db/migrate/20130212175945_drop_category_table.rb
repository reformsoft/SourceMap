class DropCategoryTable < ActiveRecord::Migration
  def up
  	remove_column :services, :category_id
  	drop_table :categories
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
