class AddOwnerToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :owner, :integer
  end
end
