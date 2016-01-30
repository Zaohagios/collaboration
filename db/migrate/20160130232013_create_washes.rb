class CreateWashes < ActiveRecord::Migration
  def change
    create_table :washes do |t|
      t.integer :completed_by
      t.string :title

      t.timestamps null: false
    end
  end
end
