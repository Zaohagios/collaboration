class CreateBoardNames < ActiveRecord::Migration
  def change
    create_table :board_names do |t|
      t.string :name
      t.integer :group

      t.timestamps null: false
    end
  end
end
