class DropDescriptionAndNameFromService < ActiveRecord::Migration
  def up
    remove_column :services, :name
    remove_column :services, :description
  end

  def down
    add_column :services, :name, :string
    add_column :services, :description, :string
  end
end
