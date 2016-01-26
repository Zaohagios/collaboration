class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :board
      t.string :subject
      t.text :body
      t.boolean :status
      t.datetime :due_date
      t.integer :level
      t.integer :comments
      t.integer :type

      t.timestamps null: false
    end
  end
end
