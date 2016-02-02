class AddBoardToWash < ActiveRecord::Migration
  def change
    add_column :washes, :board, :integer
  end
end
