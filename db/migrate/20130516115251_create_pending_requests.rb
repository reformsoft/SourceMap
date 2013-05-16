class CreatePendingRequests < ActiveRecord::Migration
  def change
    create_table :pending_requests do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone
      t.float :lat
      t.float :lng
      t.string :tags
      t.string :description

      t.timestamps
    end
  end
end
