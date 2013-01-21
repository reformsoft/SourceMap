class AddValueToTag < ActiveRecord::Migration
  def change
    add_column :tags, :value, :string
  end
end
