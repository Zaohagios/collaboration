class CreateStandardWorks < ActiveRecord::Migration
  def change
    create_table :standard_works do |t|
      t.string :subject
      t.integer :board
      t.time :start_time
      t.time :due_time
      t.boolean :sun
      t.boolean :mon
      t.boolean :tue
      t.boolean :wed
      t.boolean :thu
      t.boolean :fri
      t.boolean :sat
      t.integer :level
      t.integer :owner

      t.timestamps null: false
    end
  end
end
