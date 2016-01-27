class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.integer :user
      t.integer :board

      t.timestamps null: false
    end
  end
end
