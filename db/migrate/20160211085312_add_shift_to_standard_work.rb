class AddShiftToStandardWork < ActiveRecord::Migration
  def change
    add_column :standard_works, :night, :boolean
    add_column :standard_works, :day, :boolean
  end
end
