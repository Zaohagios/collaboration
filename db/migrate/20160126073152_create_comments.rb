class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :assignment
      t.integer :owner
      t.text :body

      t.timestamps null: false
    end
  end
end
