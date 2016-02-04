class AddCommentToWash < ActiveRecord::Migration
  def change
    add_column :washes, :comment, :text
  end
end
